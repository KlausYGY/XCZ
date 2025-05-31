//循环执行。
alarm[0] = 60;

//如果场上存在玩家。
if instance_exists(oPlayer) {
	
	//获得玩家当前的hp相比hp最大值的百分比。
	var _player_hp_max = round(100 / oPlayer.hp_max);
	var _player_hp = round(oPlayer.hp * _player_hp_max);
	
	//如果玩家血量在一半以上。
	if _player_hp > 50 and _player_hp <= 100	{ global.hp_restore = 0; }
	//如果玩家血量在一半以下。
	if _player_hp < 50 and _player_hp >= 40		{ global.hp_restore = 1; }
	if _player_hp < 40 and _player_hp >= 30		{ global.hp_restore = 2; }
	if _player_hp < 30 and _player_hp >= 20		{ global.hp_restore = 3; }
	if _player_hp < 20 and _player_hp >= 10		{ global.hp_restore = 4; }
	if _player_hp < 10							{ global.hp_restore = 5; }
	
}