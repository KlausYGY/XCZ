/// @description 死亡后事件
//因为到时间而销毁不会产生经验。
if global.level_time_lv = false {
	repeat(irandom_range(2, 3)) {
		instance_create_depth(x, y, depth, Exp);//掉落经验球
	}
	
	//死亡时，百分之5 + 动态血瓶概率加成 的概率掉落血瓶。
	var _random_hp_restore = irandom_range(0,100);
	if _random_hp_restore < 2 + global.hp_restore + obj_dynamic_equilibrium.hp_restore_up {
		instance_create_layer(x, y, "Instances", obj_hp_restore);
	}
}
var _dead = instance_create_depth(x,y, depth, obj_enemy_dead);//播放史莱姆销毁动画
_dead.boost_x = boost_x;
_dead.boost_y = boost_y;
_dead.xx = xx;
_dead.xscale = xscale;