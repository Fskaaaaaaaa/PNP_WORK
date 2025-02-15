#include<warp.hpp>


void Warp::findPerTransMat(const cv::Mat& rvec , const cv::Mat& tvec){
    cv::Mat R;
    cv::Rodrigues(rvec,R);
    R.copyTo(T(cv::Range(0, 3), cv::Range(0, 3)));
    tvec.copyTo(T(cv::Range(0, 3), cv::Range(3, 4)));
    for (const auto& srcPoint : srcPoints) {
        cv::Mat srcPointHomogeneous = (cv::Mat_<double>(4, 1) << 
            srcPoint.x, srcPoint.y, 0, 1);
        cv::Mat dstPointHomogeneous = T * srcPointHomogeneous;
        cv::Point2f dstPoint(dstPointHomogeneous.at<double>(0) / dstPointHomogeneous.at<double>(3),
                             dstPointHomogeneous.at<double>(1) / dstPointHomogeneous.at<double>(3));
        dstPoints.push_back(dstPoint);//求解经变换矩阵的原始四点的坐标以求解透视变换矩阵
    }
    perspectiveTransform = cv::getPerspectiveTransform(srcPoints, dstPoints);
    //dstPoints.clear();
}

void Warp::do_warp(const cv::Mat& video,cv::Mat& frame){
    // cv::Rect rect;
    // rect=cv::boundingRect(srcPoints);
    // cv::rectangle(frame,rect,cv::Scalar(255,0,0),5);
    for(int i=0;i<4;i++)cv::circle(frame,dstPoints.at(i),5,cv::Scalar(255,0,0),-1);
    cv::Mat mask=cv::Mat(frame.size(),CV_8UC1,cv::Scalar(255));
    std::vector<cv::Point> pts;
    for(const auto& point:dstPoints)pts.push_back(point);
    dstPoints.clear();
    fillConvexPoly(mask,pts,0);
    cv::Mat temp;
    cv::warpPerspective(video,temp,perspectiveTransform,frame.size());
    frame.copyTo(frame, mask);
    temp.copyTo(frame, ~mask);
    //frame+=temp;//这里本来想做出来把视频贴到识别到的图像上，以实现“图像动起来”的效果，但自己弄不明白了QAQ
}