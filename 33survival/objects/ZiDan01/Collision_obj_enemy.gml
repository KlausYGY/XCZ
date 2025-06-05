/// @description 碰撞子弹消失
var _list_size = ds_list_size(_list);

if _list_size = 0 {
	ds_list_add(_list, other);
	other.hp -= bullet_damage;//怪物掉血伤害。
	other.sprite_blinzk = 1;//受击反馈。
	other.xx = 1.6;//受击动画。
	//击退目标。
	other.boost_x = lengthdir_x(attack_repel, direction);
	other.boost_y = lengthdir_y(attack_repel, direction);
	//如果roll的概率小于燃烧概率的值，那么
	if burn_probability <= burn {	
		//如果敌人的燃烧层数小于10，那么叠加一层燃烧并传递燃烧伤害。
		if other.burn_layer < 10 {
			other.burn_layer += 1;
			other.burn_damage += burn_damage;
		}
	}
	
	if armor_piercing > 0 { armor_piercing -= 1; }
	
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
	//飘字和造成的伤害相同。
	_dano.dano = bullet_damage;
}
	
if _list_size > 0 {
	for (var i = 0; i <  _list_size; i += 1) {
		if ds_list_find_index(_list, other) = -1 {

			ds_list_add(_list, other);
			other.hp -= bullet_damage;//怪物掉血伤害。
			other.sprite_blinzk = 1;//受击反馈。
			other.xx = 1.6;//受击动画。
			//击退目标。
			other.boost_x = lengthdir_x(attack_repel, direction);
			other.boost_y = lengthdir_y(attack_repel, direction);
			attack_repel = attack_repel / 2;
			//如果roll的概率小于燃烧概率的值，那么
			if burn_probability <= burn {	
				//如果敌人的燃烧层数小于10，那么叠加一层燃烧并传递燃烧伤害。
				if other.burn_layer < 10 {
					other.burn_layer += 1;
					other.burn_damage += burn_damage;
				}
			}
			
			if armor_piercing > 0 { armor_piercing -= 1; }
			bullet_damage = round(bullet_damage / 2);	
				
			//创建伤害飘字，让飘字图层在本体之上。
			var _dano_0 = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
			//飘字和造成的伤害相同。
			_dano_0.dano = bullet_damage;
		}
	}
}

//当穿透层数耗尽时，销毁自己。
if armor_piercing = 0 { instance_destroy(); }
