// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function ran_shao(){



if burn_layer > 0 and burn_alarm = 80 and burn_lock = false {
	burn_alarm = 0;
	burn_lock = true;
	var _damage = burn_damage / burn_layer;
	hp -= burn_damage_max;
	burn_damage -= _damage;
	burn_layer -= 1;
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
	//飘字和造成的伤害相同。
	_dano.dano = burn_damage_max;
	_dano.cor = c_red;
	burn_damage_max = 0;
}

if burn_alarm < 80 {
	burn_alarm += 1; 
	
	if burn_lock = true {
		burn_damage_max = burn_damage;
	}
}
if burn_alarm = 30 {
	burn_lock = false;
}


}