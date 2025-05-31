if not instance_exists(target_) exit;
//检测为基准的单位是否存在，如果不存在，那么就罢工。

//坐标为参照物与鼠标之间的距离。
x = lerp(x,((obj_mouse.x - target_.x) / aa) + target_.x, 0.1);
y = lerp(y,((obj_mouse.y - target_.y) / aa) + target_.y, 0.1);
camera_set_view_pos(view_camera[0], x - width_ / 2, y - height_ / 2);

//屏幕震动效果。
if screen_shake = true {
	x += lengthdir_x(shake, dir);
	y += lengthdir_y(shake, dir);
}