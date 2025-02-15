#include<do_match.hpp>



Match::Match(const std::string& path,cv::Mat& imgin):img(imgin){//构造函数加载下进行匹配的模板
    // cv::cvtColor(cv::imread(path),stencil,cv::COLOR_BGR2GRAY);//先转为灰度再sift，节省计算量
    stencil=cv::imread(path);
    if(!stencil.empty())std::cout<<"succeed load stencil."<<std::endl;
    else{
        std::cout<<"fail2loadStencil."<<std::endl;
        exit(0);
    }
    sift->detectAndCompute(stencil,cv::noArray(),keypoints1,descriptors1);
    std::vector<cv::Mat> train_desc(1, descriptors1);
    matcher.add(train_desc);//向匹配器中添加模板的特征点描述符并训练，为寻找配对点做准备
    matcher.train();
    
}
Match::~Match(){
    stencil.release();//析构函数释放读取的模板
    std::cout<<"stencil released."<<std::endl;
}
void Match::findKeypoints(){
    //cv::cvtColor(img,img,cv::COLOR_BGR2GRAY);//先转为灰度再检测关键点
    sift->detectAndCompute(img,cv::noArray(),keypoints2,descriptors2);
}
void Match::findMatchPoints(){
    goodMatchPoints.clear();//清空点列表，以实现重复调用
    matcher.knnMatch(descriptors2,matchPoints,2);//寻找配对点，找不到配对点会返回空的vector
    std::cout << "total match points: " << matchPoints.size()<<",";
    for (int i = 0; i < matchPoints.size(); i++)
        if (matchPoints[i][0].distance < 0.375 * matchPoints[i][1].distance)
            goodMatchPoints.push_back(matchPoints[i][0]);//筛选配对点
    matchPoints.clear();
    std::cout<<"good match points:"<<goodMatchPoints.size()<<std::endl;
}
void Match::drawMatchPoints(cv::Mat& draw_board){//画出配对点
    cv::drawMatches(img, keypoints2, stencil, keypoints1, goodMatchPoints, draw_board);
    cv::imshow("match",draw_board);
}
std::vector<cv::Point2f>* Match::getPoints(){//返回匹配到的关键点的首地址（[0]下的是模板点，[1]下是识别到的点）
    pairedPoints[0].clear();
    pairedPoints[1].clear();
    for(const auto& match:goodMatchPoints){//使用包含两个动态数组的数组存储匹配到的关键点信息并返回
        pairedPoints[0].push_back(keypoints1[match.trainIdx].pt);
        pairedPoints[1].push_back(keypoints2[match.queryIdx].pt);
    }
    //std::cout<<pairedPoints[0].size()<<" "<<pairedPoints[1].size()<<std::endl;
    return pairedPoints;
}