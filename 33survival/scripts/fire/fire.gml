// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function fire(){
	if collision_circle(x, y, detectRad, obj_enemy, false, true) {	//确认敌人目标

	targetEnemy = instance_nearest(x, y, obj_enemy);
	//发射子弹并设置子弹目标
	if shootCD <= 0 {
		//生成子弹
		var _b = instance_create_depth(x,y, depth-1,ZiDan01);
		_b.target = targetEnemy;
		//WeiZhi = point_direction(x, y, targetEnemy.x, targetEnemy.y);
		shootCD = shootCDinit;
	}
}
}