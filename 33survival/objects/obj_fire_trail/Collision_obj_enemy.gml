/// @description 

var _list = ds_list_create();//创建列表。

var hits = instance_place_list(x, y, obj_enemy, _list, false);//把当前碰撞遮罩里的对象加入列表

	if refresh_hit = false { 
		refresh_hit = true;//只能攻击一次。
		refresh_hit_timer = refresh_hit_time;
		
	if hits > 0 {
	for (var s = 0; s < hits; s++;) {
				_list[| s].hp = _list[| s].hp -damage;//扣除生命
				
				//技能施加燃烧
				ran_gl = random_range(0,100);//燃烧概率
				
				if ran_gl <= 100 {
					
					if _list[| s].burn_layer < burn_layer_max {
						_list[| s].burn_layer += 1;
						_list[| s].burn_damage += 4;
					}
				}
				   
				//创建伤害飘字，让飘字图层在本体之上。
				//var _dano = instance_create_layer(_list[| k].x, _list[| k].y - 10, "Instances", obj_efeito);
				//_dano.depth = other.depth - 1;
				//飘字和造成的伤害相同。
				//_dano.dano = damage;   
			}
	}
				ds_list_destroy(_list);
	}

if refresh_hit = true {
	 if refresh_hit_timer > 0 {
		 refresh_hit_timer -= 1;
	 }
	if refresh_hit_timer = 0 {
		refresh_hit = false;
	}

 }
 
 