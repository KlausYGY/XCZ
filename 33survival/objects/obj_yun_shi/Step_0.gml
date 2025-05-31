/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


//将以每步25像素的速度向变量 "目标 "中索引的实例位置移动。一旦它到达该位置，速度就被设置为0。
if point_distance(x, y, ldx, ldy) > 25{
	
	move_towards_point(ldx, ldy, 25);
	
}else{instance_destroy();}
