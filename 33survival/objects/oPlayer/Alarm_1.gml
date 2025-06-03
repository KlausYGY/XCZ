alarm[1] = 240;//自动回血。

if hp < hp_max {
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(x, bbox_top - 10, "Instances", obj_efeito);
	_dano.depth = depth - 1;
	_dano.cor = c_lime;//颜色。
		
	//血量回复不会超过上限。
	if (hp_max - hp) < global.player_hp_reply {
		hp += hp_max - hp;
		_dano.dano = hp_max - hp;
	}else{
		hp += global.player_hp_reply;
		_dano.dano = global.player_hp_reply;
	}
}