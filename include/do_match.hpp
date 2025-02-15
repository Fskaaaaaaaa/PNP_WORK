// Match.h
#ifndef MATCH_H
#define MATCH_H

#include <opencv2/opencv.hpp>
#include <string>
#include <iostream>
#include <vector>

class Match {
public:
    Match(const std::string& path, cv::Mat& imgin);
    ~Match();

    void findKeypoints();
    void findMatchPoints();
    void drawMatchPoints(cv::Mat& drawBoard);
    std::vector<cv::Point2f>* getPoints();

private:
    cv::FlannBasedMatcher matcher; // 特征点匹配器
    std::vector<std::vector<cv::DMatch>> matchPoints;
    std::vector<cv::DMatch> goodMatchPoints;
    cv::Mat stencil; // 加载的模板
    cv::Ptr<cv::SIFT> sift = cv::SIFT::create(); // 指向SIFT对象的指针
    cv::Mat img; // 传入的进行匹配的图片
    std::vector<cv::KeyPoint> keypoints1, keypoints2;
    cv::Mat descriptors1, descriptors2;
    std::vector<cv::Point2f> pairedPoints[2];//aaaaaaaaa
};

#endif // MATCH_H