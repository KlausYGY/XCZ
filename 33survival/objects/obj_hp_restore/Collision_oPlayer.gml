//other.hp += 6;
//if other.hp > other.hp_max {
	//other.hp = other.hp_max;
//}
if other.hp < other.hp_max {
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
	_dano.depth = other.depth - 1;

	//飘字和造成的伤害相同。
	if (other.hp_max - other.hp) < 6 {
		_dano.dano = other.hp_max - other.hp;
	}else{
		_dano.dano = 6;
	}
	_dano.cor = c_lime;//颜色。
		
	//血量回复不会超过上限。
	if (other.hp_max - other.hp) < 6 {
		other.hp += other.hp_max - other.hp;
	}else{
		other.hp += 6;
	}
		
		
	instance_destroy();
}