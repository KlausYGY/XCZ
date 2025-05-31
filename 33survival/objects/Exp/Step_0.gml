/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if instance_exists(oPlayer){
	if collision_circle(x, y, Global.ExpFanWei, oPlayer, false, true){
		Suo = 1;
	}
	
	if Suo{
		move_towards_point(oPlayer.x, oPlayer.y, Global.ExpSpeed);
	}

}else{
	Suo = 0;
	speed = 0;
	}