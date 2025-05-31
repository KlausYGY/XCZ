/// @description 攻击目标

if instance_exists(target){
	move_towards_point(target.x, target.y, move_speed);
	//motion_set(oPlayer.WeiZhi, move_speed);
}else{
	//motion_set(360, move_speed);
}