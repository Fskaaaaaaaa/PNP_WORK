// PNP.h
#ifndef PNP_H
#define PNP_H

#include <opencv2/opencv.hpp>
#include <vector>
#include <string>
#include <iostream>
#include <sstream>

class PNP {
public:
    PNP(cv::Mat& image, std::vector<cv::Point2f>* pt, cv::Mat* rvecin, cv::Mat* tvecin);
    ~PNP() {}

    bool solve_pnp(); // 进行pnp解算的函数
    void adjust_pix2img_para(cv::Mat& stencil); // 调节像素坐标系到图像坐标系的参数

    static void put_real(int pos, void* ptr); // 往模板上输出文字的函数
    void put_rvectvec(cv::Mat);
    bool flag = false; // 标记pnp解算是否成功
private:
    cv::Mat cameraMatrix;
    static int u0, v0, fx, fy; // 使用highhue根据识别的图片的由用户手动调整大小的参数

    std::vector<cv::Point2f>* obj_points;
    std::vector<cv::Point2f>* img_points;
    std::vector<cv::Point3f> obj_points_3D;
    cv::Mat *rvec, *tvec; // 旋转矩阵和平移矩阵
};

#endif // PNP_H