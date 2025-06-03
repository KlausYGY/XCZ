if instance_exists(oPlayer){
	
	if collision_circle(x, y, global.exp_range, oPlayer, false, true){
		move_towards_point(oPlayer.x, oPlayer.y, oPlayer.speed_max + 1);
		if image_alpha > 0.3 { image_alpha -= 0.05; }
	}else{
		speed = 0;
		if image_alpha < 1 { image_alpha += 0.05; }
	}
}else{
	speed = 0;
	if image_alpha < 1 { image_alpha += 0.05; }
}

create_trail.x = x;
create_trail.y = y;