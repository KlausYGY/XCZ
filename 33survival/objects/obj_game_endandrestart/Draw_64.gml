draw_set_font(fnt_ui);
//设置字体。

draw_set_alpha(textalpha);
draw_set_colour($FFFFFFFF & $ffffff);
//设置透明度与颜色。

{//使用摄像机用
/*
draw_text(camera_get_view_width(view_camera[0]) / 2 - 70, 15, string("Exiting the Game:") + string(floor(gameend)) + string("/100"));
//绘制变量"gameend"值为该处。

draw_rectangle(camera_get_view_width(view_camera[0]) / 2 - 60, 40, camera_get_view_height(view_camera[0]) / 2 + gameend * 1.88 + 59, 50, 0);
draw_rectangle(camera_get_view_width(view_camera[0]) / 2 - 60, 40, camera_get_view_height(view_camera[0]) / 2 + 245, 50, 1);
//绘制变量“gameend”值为进度条，与进度条的框。
*/
}
{//不使用摄像机用

draw_text(view_wport[0] / 2 - 30, 15, string("正在退出游戏: ") + string(floor(gameend)) + string(" /100"));
//绘制变量"gameend"值为该处。

draw_rectangle(view_wport[0] / 2 - 20, 40, view_wport[0] / 2 + gameend * 1.5 - 20, 50, 0);
draw_rectangle(view_wport[0] / 2 - 20, 40, view_wport[0] / 2 + 130, 50, 1);
//绘制变量“gameend”值为进度条，与进度条的框。

}


draw_set_alpha(1);
//重置透明度。

draw_set_font(fnt_ui);
//设置字体。

if global.debug = true { //显示游戏帧数。
	draw_text(1750, 20, string("游戏帧数: ") + string(floor(fps)) + string("/60"));
	//显示房间内实例数量。
	var _obj_count = instance_count;
	draw_text(1750, 40, string("实例数量: ") + string(_obj_count));
}
