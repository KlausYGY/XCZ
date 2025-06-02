/// @description 敌人逻辑


if instance_exists(oPlayer){

	move_towards_point(oPlayer.x, oPlayer.y, moveSpd);//追击玩家
	
	//受击反馈
	if hp_jc != hp {
		hp_jc = hp;
		sjdh = 1;
		if x < oPlayer.x { xscale = -1 }else{ xscale = 1 }//受击朝向

		sprite = spr_slim_hurt;
		impact_alarm_1 = 10;//冲击力值开始恢复时间。
	}else{ 
		impact_alarm_1 --;
		if impact_alarm_1 <= 0 {sprite = spr_slim; sjdh = 0; tmd = 1;}
	}
}

if hp <= 0 {
	instance_destroy();
}

//如果被击中时，计算击退力与自身击退抗性的指，结果为被击退的距离。
x += boost_x * boost_defense;
y += boost_y * boost_defense;
boost_x = lerp(boost_x, 0, 0.1);
boost_y = lerp(boost_y, 0, 0.1);

//用于怪物生成动画。
if xx > 1 {
	xx = lerp(xx, 1, 0.4);
}

#region 燃烧

if burn_alarm < 60 {
	burn_alarm += 1;//重置燃烧冷却。
	//进行第一次燃烧造成的伤害。
	burn_damage_max = burn_damage;
}

//如果燃烧层数大于0，且燃烧间隔冷却完毕。
if burn_layer > 0 and burn_alarm = 60 {
	burn_alarm = 0;//重置燃烧间隔。
	
	//根据燃烧伤害与燃烧层数获得最高层数的最大燃烧伤害。
	var _damage = burn_damage / burn_layer;
	//进行第一次燃烧造成的伤害。
	hp -= burn_damage_max;
	//照成第一次伤害后，根据上述的计算减少下一次的燃烧伤害。
	burn_damage -= _damage;
	burn_layer -= 1;
	
	//创建伤害飘字，让飘字图层在本体之上。
	var _dano = instance_create_layer(other.x, other.bbox_top - 10, "Instances", obj_efeito);
	//飘字和造成的伤害相同。
	_dano.dano = burn_damage_max;
	_dano.cor = c_red;//红色。
	
	burn_damage_max = 0;
}
#endregion