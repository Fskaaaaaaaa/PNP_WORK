#include<iostream>
#include<string>
#include<camera.hpp>
#include<do_match.hpp>
#include<solve_pnp.hpp>
#include<warp.hpp>


std::string video_path=R"(..\arts\olilioli.mp4)";//视频的路径
std::string stencil_path=R"(..\arts\olilioli.png)";//模板的路径


int main(){
    cv::Mat frame,img,rvec,tvec,drawBoard,stencil;
    stencil=cv::imread(stencil_path);
    camera cap=camera(0,frame);//frame就是camera读取的图像
    video vdo=video(video_path,img);
    Warp warp;
    cap.read();
    Match matcher=Match(stencil_path,frame);//初始化匹配器
    matcher.findKeypoints();
    matcher.findMatchPoints();
    PNP pnp=PNP(frame,matcher.getPoints(),&rvec,&tvec);//初始化pnp解算对象
    pnp.adjust_pix2img_para(stencil);//初始化调参的窗口（bushi
    cv::waitKey(0);//等待用户调好参数再继续
    while(true){
        cap.read();
        matcher.findKeypoints();
        matcher.findMatchPoints();
        matcher.drawMatchPoints(drawBoard);
        matcher.getPoints();
        if(pnp.solve_pnp()){
            std::cout<<rvec.t()<<'\n'<<tvec.t()<<std::endl;
            warp.findPerTransMat(rvec,tvec);
            vdo.read();
            warp.do_warp(img,frame);
            pnp.put_rvectvec(frame);
        }
        cap.show("olilioli");
        if(cv::waitKey(10)!=-1)break;
    }
}