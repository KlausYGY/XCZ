create_trail.x = x;
create_trail.y = y;

if boom_lock = true {
	boom_lock = false;
	boom_draw = false;
	//范围爆炸。
	var _list_0 = ds_list_create();//创建列表。
	//将范围内的敌人存入列表中。
	var _hits_0 = collision_circle_list(x, y, boom_range, obj_enemy, false, true, _list_0, true);
	
	if _hits_0 > 0 {
	for (var s = 0; s < _hits_0; s++;) {
		//扣除目标生命。
		_list_0[| s].hp -= round(bullet_damage / 2);
			
		//创建伤害飘字，让飘字图层在本体之上。
		var _dano = instance_create_layer(_list_0[| s].x, _list_0[| s].y - 10, "Instances", obj_efeito);
		_dano.depth = other.depth - 1;
		//飘字和造成的伤害相同。
		_dano.dano = round(bullet_damage * 0.66);
		
		var _boom_range = instance_create_layer(x, y, "Instances", obj_boom_range);
		_boom_range.xx = 1 * boom;
		_list_0[| s].boost_x = lengthdir_x(attack_repel,  point_direction(_list_0[| s].x, _list_0[| s].y, _boom_range.x, _boom_range.y) - 180);
		_list_0[| s].boost_y = lengthdir_y(attack_repel,  point_direction(_list_0[| s].x, _list_0[| s].y, _boom_range.x, _boom_range.y) - 180);
		}
	}
	ds_list_destroy(_list_0);//清除列表。
}