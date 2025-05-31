/// @description 死亡后事件

instance_create_depth(x, y, depth, Exp);//掉落经验球
instance_create_depth(x,y, depth, Enemy_Slim_Dead);//播放史莱姆销毁动画

//死亡时，百分之5 + 动态血瓶概率加成 的概率掉落血瓶。
var _random_hp_restore = irandom_range(0,100);
if _random_hp_restore < 5 + global.hp_restore {
	instance_create_layer(x, y, "Instances", obj_hp_restore);
}