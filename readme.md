# PNP解算旋转猫在相机坐标系的坐标

## 概述：

使用sift特征匹配得到的关键点对进行pnp求解，得到olilioli猫在相机坐标系下的旋转向量和坐标（以米为单位）。

## 运行：

运行程序会先弹出滑条调节窗口，请根据要识别的olilioli猫的大小（正方形，包含白色背景）调节fx，fy滑条使图片上展示的大小和现实相同（以米为单位）
注意：fx，fy的值不准确会导致pnp求解出现误差！
（这四个参数是涉及像素坐标系转换世界坐标系的，通常情况下前两个滑条的参数u0，v0自动填充的默认值就可以了，不需要再移动。）
调完参后按任意键开始sift识别和pnp求解。再按任意键退出。
特征匹配olilioli猫的模板图片在arts目录下，可以拿手机或者平板打开来测试该程序。
视频演示在同一文件夹内。（演示的时候参数也不一定准确，pnp结果也有误差，但总体是能看出来x，y，z轴坐标随物体位移的线性变化关系的）

## 尝试：

还尝试了使用pnp得出的变换矩阵求解透视变换矩阵将视频的每一帧贴到相机画面上来实现“图片动起来的效果”，但是效果不佳。
