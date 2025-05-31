/// @description 初始化玩家

hp = 100;//血量
hp_max = hp;//最大血量。
hp_effect_0 = hp * (18 / hp_max);//绘制血条黑色背景。

lv = 1;//初始等级
EpxMax = 10;//初始最大经验

WudiCdZD = 30;//最大无敌时间
WudiCd = WudiCdZD;//无敌时间

move_speed_init = 1.2;
move_speed = move_speed_init;//移动速度

shan_bi_init = 10;//闪避距离
shan_bi = shan_bi_init;
shan_bi_kg = 0;//闪避开关
shanx = x;
shany = y;
shan_bi_cdinit = 60;//闪避cd
shan_bi_cd = shan_bi_cdinit;

detectRad = 60;//侦测半径

spr = Player;//动画

Fx = 1;//动画朝向

shootCDinit = 20;//攻击CD
shootCD = shootCDinit;

Bulle01 = ZiDan01;//弹药类型

//敌人列表
//enemyList = ds_list_create();
//当前敌人（无
targetEnemy = noone;


