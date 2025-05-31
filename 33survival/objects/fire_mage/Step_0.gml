/// @description 

if instance_exists(oPlayer){//判断主角对象是否存在
	x = oPlayer.x;
	y = oPlayer.y;

//武器跟随鼠标旋转

	image_angle  = point_direction(mouse_x, mouse_y ,x, y);



//武器跟随玩家
//if instance_exists(oPlayer){
//	move_towards_point(oPlayer.x, oPlayer.y-5, 3);
//}else{
//	instance_destroy();
//	}



//玩家技能

//火球
fire_ball_cd --;
if fire_ball_cd <= 0 fire_ball_cd = 0;
if fire_ball_cd <= 0{
	FireBall();
}

//火焰射线
if fire_ray_init = false { 
	
	if mouse_check_button(mb_left){
		oPlayer.move_speed -= oPlayer.move_speed*0.7;//减移动速度
		fire_ray_init = true;
		var _fire_ray = instance_create_depth(oPlayer.x,oPlayer.y, depth, obj_fire_ray);//绘制火焰射线。
		_fire_ray.refresh_hit_time = fire_ray_cd;
	}
	
}
//松开按键事件
if mouse_check_button_released(mb_left) {
	oPlayer.move_speed = oPlayer.move_speed_init;
	instance_destroy(obj_fire_ray);
	fire_ray_init = false;
}


//火焰足迹
if keyboard_check_pressed(ord("F")){//按键只会触发一次
	fire_trail_kg = 1;
}

if fire_trail_kg = 1{
	
	fire_trail_time --;
	if fire_trail_time != 300 {
		fire_time--;
		if fire_time <= 0 {
			instance_create_depth(oPlayer.x,oPlayer.y, depth, obj_fire_trail);//生成火焰足迹
			fire_time = fire_time_init;
		}

	}
	if fire_trail_time <= 0 {fire_trail_time = 300;fire_trail_kg = 0;}
	
}


}else{
	speed = 0;
	}





