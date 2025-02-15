#include<camera.hpp>



camera_and_video::camera_and_video(int camera_number,cv::Mat& imgin):cap(camera_number),img(imgin){//读取摄像头
    //_sleep(1500);//延迟等待，给相机初始化留时间
    if(cap.isOpened())std::cout<<"camera open."<<std::endl;
    else{
        std::cout<<"failed open camera."<<std::endl;
        exit(0);     
    }
}

camera_and_video::camera_and_video(const std::string& path,cv::Mat& imgin):cap(path),img(imgin){//读取视频
    //_sleep(1500);
    if(cap.isOpened())std::cout<<"success loading video."<<std::endl;
    else{
        std::cout<<"failed open video."<<std::endl;
        exit(0);
    }
}

// void camera_and_video::read()=0;//纯虚函数提供rea的接口
// //如果保证传入的矩阵是初始化时传入的矩阵，矩阵读入的图片也应该同步到了成员变量img

bool camera_and_video::show(const std::string& name){//窗口名引用传入，减少复制字符串的性能开销
    if(!img.empty()){
        cv::imshow(name,img);
        return true;
    }
    std::cout<<"fail2read."<<std::endl;
    return false;
}




camera_and_video::~camera_and_video(){//析构函数，释放视频/摄像头，清空窗口
    cap.release();
    cv::destroyAllWindows();
    //std::cout<<"all windows destoryed."<<std::endl;
}


camera::camera(int number,cv::Mat& imgin):camera_and_video(number,imgin){};
void camera::read(){// 由于最开始是引用传入的，故修改内部变量的值也能影响到初始化时传入的变量的值
    cap>>img;
    if(img.empty()){
        std::cout<<"WTFyourCameraBroken!!"<<std::endl;
        exit(0);
    }
}
camera::~camera(){
    std::cout<<"camera closed."<<std::endl;
}


video::video(const std::string& path,cv::Mat& imgin):camera_and_video(path,imgin){};
void video::read(){//视频可以循环播放
    cap>>img;
    if (img.empty()) {
        // 如果读取到空帧，说明视频播放结束，重新设置指针到视频开头
        cap.set(cv::CAP_PROP_POS_FRAMES, 0);
        cap>>img;//重新开始读取视频第一帧
    }
}
video::~video(){
    std::cout<<"stop reading video."<<std::endl;
}