/// @description 

//玩家移动

PlayerController();


//闪避
shan_bi_cd --;
if shan_bi_cd <=0 shan_bi_cd=0;

//射击CD
shootCD --;
if shootCD <= 0 shootCD = 0;
fire();

//无敌帧
if WudiCd < WudiCdZD{
	WudiCd +=1;
}

//玩家掉血死亡
if hp <=0{
	oSystem.alarm[0] = 60;
	instance_create_depth(x, y, depth, Enemy_Slim_Dead);
	instance_destroy();
}

/*
//侦测敌人并加入列表
if collision_circle_list(x, y, detectRad, Enemy_Slim, false, true, enemyList, true){
	//确认敌人目标
	targetEnemy = enemyList[|0];
	//发射子弹并设置子弹目标
	if shootCD <= 0{
		//生成子弹
		var _b = instance_create_depth(x,y, depth-1,ZiDan01);
		_b.target = targetEnemy;
		shootCD = shootCDinit;
	}
	ds_list_clear(enemyList);
}else{
	//目标敌人清空
	targetEnemy = noone;
	//敌人列表清空
	ds_list_clear(enemyList);
}