/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if instance_exists(oPlayer){
	if collision_circle(x, y, global.exp_range, oPlayer, false, true){
		Suo = 1;
	}
	
	if Suo{
		move_towards_point(oPlayer.x, oPlayer.y, oPlayer.speed_max + 1);
	}

}else{
	Suo = 0;
	speed = 0;
	}
	
create_trail.x = x;
create_trail.y = y;