/// @description 死亡后事件
//因为到时间而销毁不会产生经验。
if global.level_time_lv = false {
	
	instance_create_depth(x, y, depth, Exp);//掉落经验球
	
	//死亡时，百分之5 + 动态血瓶概率加成 的概率掉落血瓶。
	var _random_hp_restore = irandom_range(0,100);
	if _random_hp_restore < 2 + global.hp_restore {
		instance_create_layer(x, y, "Instances", obj_hp_restore);
	}
}
instance_create_depth(x,y, depth, Enemy_Slim_Dead);//播放史莱姆销毁动画