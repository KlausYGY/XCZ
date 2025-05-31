
function FireBall(){//火球

	
	if mouse_check_button(mb_right){
				//instance_create_depth(mouse_x,mouse_y, depth, obj_fire_ball);//创建火球
				instance_create_layer(mouse_x+300,mouse_y-300, "te_xiao1", obj_yun_shi);//创建火球
				fire_ball_cd = fire_ball_init;
		
	}
}