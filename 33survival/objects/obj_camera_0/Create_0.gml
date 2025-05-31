//该实例为摄像机。

screen_shake = false;			//屏幕震动效果开关。
shake = 6;						//震动的距离。
dir = 0;						//震动的角度。

aa = 3;							//用来控制鼠标移动的最大视野。

//"target_"为与谁为基准，一般为玩家。
target_ = oPlayer;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

view_enabled = true;//启用视野。
view_visible[0] = true;//启用摄像机的第一个。
