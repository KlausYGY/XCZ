/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
var _list = ds_list_create();//创建列表。
//var hits = collision_line_list(x,y, xEnd, yEnd, obj_enemy, 0, 0, _list, 0) ;//检查路径是否有对象

var hits = instance_place_list(x, y, obj_enemy, _list, false);//把当前碰撞遮罩里的对象加入列表


	if refresh_hit = false { 
		refresh_hit = true;//只能攻击一次。
		refresh_hit_timer = refresh_hit_time;
	if hits > 0 {
	for (var s = 0; s < hits; s++;) {
				_list[| s].hp = _list[| s].hp -damage;//扣除生命
				
				//击退目标。
				_list[| s].boost_x = lengthdir_x(attack_repel, point_direction(x, y, _list[| s].x, _list[| s].y));
				_list[| s].boost_y = lengthdir_y(attack_repel, point_direction(x, y, _list[| s].x, _list[| s].y));
				//创建伤害飘字，让飘字图层在本体之上。
				var _dano = instance_create_layer(_list[| s].x, _list[| s].y - 10, "Instances", obj_efeito);
				_dano.depth = other.depth - 1;
				//飘字和造成的伤害相同。
				_dano.dano = damage;   
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