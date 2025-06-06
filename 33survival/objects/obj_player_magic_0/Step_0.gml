if collision_circle(x, y, attack_range, obj_enemy, false, true) {

	var _target = instance_nearest(x, y, obj_enemy);
	//发射子弹并设置子弹目标。
	if attack_loading <= 0 {
		//生成子弹。
		repeat(shotgun) {
			if shotgun = 1 {
				shotgun_max = 0;
			}else{
				shotgun_max -= (shotgun * 10) / shotgun;//散射。
				if shotgun_max <= -((shotgun * 10) / 2) { shotgun_max = (shotgun * 10) / 2; }//散射。
			}
			var _b = instance_create_depth(x,y, depth - 1, ZiDan01);
			_b.direction = (point_direction(x, y, _target.x, _target.y) + irandom_range(-attack_accuracy, attack_accuracy)) + shotgun_max;
			_b.speed = bullet_speed;
			_b.bullet_damage = attack;
			_b.attack_repel = attack_repel;
			_b.armor_piercing = armor_piercing;
			_b.alarm[0] = hp_alarm;
			_b.burn = burn;
			_b.burn_damage = burn_damage;//燃烧伤害。
			_b.boom = boom;//是否启动爆炸(大于0)。
			_b.boom_range = boom_range;//爆炸范围。
			attack_loading = attack_loading_max;
		}
	}
}
if attack_loading > 0 { attack_loading --; }
if dead = true { instance_destroy(); }