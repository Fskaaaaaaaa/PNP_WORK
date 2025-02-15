#include<solve_pnp.hpp>


// #define U0 0.05
// #define FX 0.05
// #define V0 0.05
// #define FY 0.05//这些是像素坐标系到图像坐标系的参数

// int width = 640;
// int height = 480;

// // 相机内参矩阵
//  cv::Mat cameraMatrix = (cv::Mat_<double>(3, 3) << 
//     width / 2, 0, width / 2,
//     0, height / 2, height / 2,
//     0, 0, 1);

// 畸变系数
//cv::Mat distCoeffs = cv::Mat::zeros(5, 1, CV_64F);



PNP::PNP(cv::Mat& image,std::vector<cv::Point2f> *pt,cv::Mat* rvecin,cv::Mat* tvecin)://传入的image只是为了获取（相机捕获）大小（好蠢啊）
    obj_points(pt),img_points(++pt),rvec(rvecin),tvec(tvecin){//初始化像素坐标系转换到图片坐标系的部分参数
        //即构造函数接受Match类传出的指向配对点的指针,还引用传递进来承接pnp结果的两个矩阵
        //通过访问这两个创建对象时传入的矩阵，可以随时获取rvec和tvec
    u0=image.size().width/2;
    v0=image.size().height/2;//静态成员变量无法使用初始化列表
    cv::Mat temp_mat = (cv::Mat_<double>(3, 3) << 
        image.size().width / 2, 0, image.size().width / 2,
        0, image.size().height / 2, image.size().height / 2,
        0, 0, 1);
    temp_mat.copyTo(this->cameraMatrix);//初始化相机参数
};

// PNP::~PNP(){};
bool PNP::solve_pnp(){//进行pnp解算的函数
    if(img_points[0].size()<6){//如果配对点少，标记解算失败并退出函数
        std::cout<<"too less points2pnp!"<<std::endl;
        flag=false;
        return false;
    }
    if(obj_points_3D.size()>0)obj_points_3D.clear();//objpoints的值不会更新，按理说在构造函数算一遍就好，但要实现动态调参只能重复计算
    auto pixel2image=[](float x,float y){//将模板上的配对点转换到图像坐标系上
        if(y==-1)return((x-u0)/fx);
        if(x==-1)return((y-v0)/fy);return 0.0f;//参数v0,u0,fx,fy均可在trackbar里实时调节
    };
    for(const cv::Point2f& obj_point:*obj_points){//将模板识别到的像素坐标的点转换为世界坐标的点
        obj_points_3D.push_back(cv::Point3f(pixel2image(obj_point.x,-1),pixel2image(-1,obj_point.y),0.0f));
    }
    return flag=solvePnP(obj_points_3D,*img_points,cameraMatrix,cv::Mat::zeros(5, 1, CV_64F),*rvec,*tvec,true,cv::SOLVEPNP_IPPE);//进行pnp解算
    //std::cout<<"aaa"<<std::endl;
}
void PNP::adjust_pix2img_para(cv::Mat& stencil){//在匹配器使用模板图片训练后（即构建函数执行后）再调用这个函数调节参数（因为回调函数会往模板上输出文字）
    cv::namedWindow("Pixel2Image",(500,500));
    cv::createTrackbar("u0","Pixel2Image",&u0,1000);
    cv::createTrackbar("v0","Pixel2Image",&v0,1000);
    cv::createTrackbar("fx","Pixel2Image",&fx,10000,put_real,&stencil);//每次调节后都会将调节后图片现实中的大小画在输入的模板上
    cv::createTrackbar("fy","Pixel2Image",&fy,10000,put_real,&stencil);
}
void PNP::put_real(int pos,void* ptr){//往木板上输出文字的函数
    cv::Mat *stencil=static_cast<cv::Mat*>(ptr);//原来cpp的指针转换不在std空间里啊
    std::stringstream ss1,ss2;
    ss1<<"real width:"<<(float)(*stencil).size().width/((float)fx);
    ss2<<"real heigh:"<<(float)(*stencil).size().height/((float)fy);
    cv::Mat temp;stencil->copyTo(temp);
    cv::putText(temp,ss1.str(),cv::Point(0,50),cv::FONT_HERSHEY_COMPLEX,1.0,cv::Scalar(0,0,255));
    cv::putText(temp,ss2.str(),cv::Point(0,100),cv::FONT_HERSHEY_COMPLEX,1.0,cv::Scalar(0,0,255));
    cv::imshow("real size",temp);
    ss1.str("");ss1.clear();ss2.str("");ss2.clear();//为了回调设成了静态成员函数，故需要每次调用后手动释放ss
}
void PNP::put_rvectvec(cv::Mat img){
    std::stringstream ss1,ss2;
    ss1<<"rvec"<<std::fixed<<std::setprecision(2);
    ss2<<"tvec"<<std::fixed<<std::setprecision(2);
    for(int i=0;i<3;i++){
        ss1<<','<<rvec->at<double>(i);
        ss2<<','<<tvec->at<double>(i);
    }
    cv::putText(img,ss1.str(),cv::Point(0,50),cv::FONT_HERSHEY_COMPLEX,0.5,cv::Scalar(0,0,255));
    cv::putText(img,ss2.str(),cv::Point(0,100),cv::FONT_HERSHEY_COMPLEX,0.5,cv::Scalar(0,0,255));
}


int PNP::u0,PNP::v0,PNP::fx,PNP::fy;//使用highhue根据识别的图片的由用户手动调整大小的参数(注意fxfy只是float型放大1000倍的代理）
//静态成员函数只能访问静态成员变量，静态成员变量在所有对象中共享