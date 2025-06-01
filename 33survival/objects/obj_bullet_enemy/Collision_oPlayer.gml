if other.invincible_time_loading = other.invincible_time {
	other.invincible_time = 0;
	other.hp -= bullet_damage;
	
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
	_dano.depth = other.depth - 1;

	//飘字和造成的伤害相同。
	_dano.dano = bullet_damage;
}
instance_destroy();