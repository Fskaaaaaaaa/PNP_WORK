#include<opencv2\opencv.hpp>
#include<iostream>
#include<string>


class Warp{
    public:
    void findPerTransMat(const cv::Mat& rvec , const cv::Mat& tvec);//更新成员变量T的值的函数
    void do_warp(const cv::Mat& vedio , cv::Mat& frame);//根据变换矩阵扭曲视频图像到摄像头画面上的函数

    private:
    cv::Mat T = cv::Mat::eye(4, 4, CV_64F);//变换矩阵
    const std::vector<cv::Point2f> srcPoints={{0,0},{500,0},{500,500},{0,500}};
    std::vector<cv::Point2f> dstPoints;
    cv::Mat perspectiveTransform;
};