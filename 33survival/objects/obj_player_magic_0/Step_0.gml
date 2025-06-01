if collision_circle(x, y, attack_range, obj_enemy, false, true) {

	var _target = instance_nearest(x, y, obj_enemy);
	//发射子弹并设置子弹目标。
	if attack_loading <= 0 {
		//生成子弹。
		var _b = instance_create_depth(x,y, depth - 1, ZiDan01);
		_b.direction = point_direction(x, y, _target.x, _target.y);
		_b.speed = 6;
		_b.bullet_damage = attack;
		_b.attack_repel = attack_repel;
		attack_loading = attack_loading_max;
	}
}
if attack_loading > 0 { attack_loading --; }
if dead = true { instance_destroy(); }