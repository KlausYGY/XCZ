alarm[0] = irandom_range(300, 600);

repeat(6){
	var _bullet =instance_create_layer(x, y, "Instances", obj_bullet_enemy);
	_bullet.bullet_hp = 100;//子弹存在时间。
	_bullet.bullet_damage = round(bullet_damage / 4);//子弹伤害。
	_bullet.speed = 0.5;//子弹速度。
	_bullet.direction = irandom(360);
}
xx = 2;