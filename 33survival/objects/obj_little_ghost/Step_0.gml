/// @description 敌人逻辑


if instance_exists(oPlayer){
	
	//燃烧效果
	ran_shao();
	
	move_towards_point(oPlayer.x, oPlayer.y, moveSpd);//追击玩家
	
	//受击反馈
	if hp_jc != hp
{
	hp_jc = hp;
	sjdh = 1;
	if x < oPlayer.x {xscale = -1}else{xscale = 1}//受击朝向

	//sprite_blinzk -= 1; 
	sprite = spr_little_ghost;
	impact_alarm_1 = 10;//冲击力值开始恢复时间。
	
} 


else { 
	
	impact_alarm_1 --;
	if impact_alarm_1 <= 0 {sprite = spr_little_ghost; sjdh = 0; tmd = 1;}
	
	}

}


if hp <= 0{
	instance_destroy();
}


//如果被击中时，计算击退力与自身击退抗性的指，结果为被击退的距离。
x += boost_x * boost_defense;
y += boost_y * boost_defense;
boost_x = lerp(boost_x, 0, 0.1);
boost_y = lerp(boost_y, 0, 0.1);

//如果玩家进入攻击范围，且子弹冷却完毕。
if collision_circle(x, y, 300, oPlayer, false, true) and attack_loading = 0 {
	attack_loading = 300;
	var _bullet_enemy = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
	_bullet_enemy.bullet_hp = 300;//子弹存在时间。
	_bullet_enemy.bullet_damage = 2;//子弹伤害。
	_bullet_enemy.speed = 2;//子弹速度。
	_bullet_enemy.direction = point_direction(x, y, oPlayer.x, oPlayer.y)//子弹角度。
}
//射击冷却。
if attack_loading > 0 { attack_loading --; }