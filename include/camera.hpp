//camera.hpp
#ifndef CAMERA_AND_VIDEO_H
#define CAMERA_AND_VIDEO_H

#include<opencv2\opencv.hpp>
#include <string>
#include <iostream>

class camera_and_video {
public:
    // 读取摄像头
    camera_and_video(int camera_number, cv::Mat& imgin);
    // 读取视频
    camera_and_video(const std::string& path, cv::Mat& imgin);

    // 纯虚函数提供read的接口
    virtual void read() = 0;

    // 显示图像
    bool show(const std::string& name);

protected:
    cv::Mat& img; // 成员变量img是引用传入的外部变量
    cv::VideoCapture cap;

    // 析构函数，释放视频/摄像头，清空窗口
    virtual ~camera_and_video();
};

class camera : public camera_and_video {
public:
    // 摄像头的类
    camera(int number, cv::Mat& imgin);
    // 读取摄像头帧
    void read() override;

    // 析构函数
    ~camera();
};

class video : public camera_and_video {
public:
    // 读取视频的类
    video(const std::string& path, cv::Mat& imgin);
    // 读取视频帧
    void read() override;

    // 析构函数
    ~video();
};

#endif // CAMERA_AND_VIDEO_H