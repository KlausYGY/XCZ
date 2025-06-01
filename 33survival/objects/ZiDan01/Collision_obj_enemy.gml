/// @description 碰撞子弹消失
var _list = ds_list_create();

if (_list > 0) {
	for (var i = 0; i < _list; ++i;) {
		if other = _list[| i] {
		}else{	
			if armor_piercing > 0 { armor_piercing -= 1; }
			bullet_damage = round(bullet_damage / 2);
			other.hp -= bullet_damage;//怪物掉血伤害。
			other.sprite_blinzk = 1;//受击反馈。
			other.xx = 1.6;//受击动画。
			
			//创建伤害飘字，让飘字图层在本体之上。
			var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
			_dano.depth = other.depth - 1;

			//飘字和造成的伤害相同。
			_dano.dano = bullet_damage;

			//击退目标。
			other.boost_x = lengthdir_x(attack_repel, direction);
			other.boost_y = lengthdir_y(attack_repel, direction);
			ds_list_add(_list, other);
		}
	}
	ds_list_destroy(_list);
}
if armor_piercing = 0 { instance_destroy(); }
