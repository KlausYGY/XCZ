/// @description 初始化敌人数据

//移动速度
moveSpd = 1;
//随机在玩家周围。
alarm[0] = 10;
harass_x = 0;
harass_y = 0;
direction = irandom(360);

hp = 2 + global.level_wave * 2;//血量
hp_jc = hp;

sprite_blinzk= 0;
sprite = spr_slim;
xscale = 1;//朝向。
animation = 0;//使用的动画
tmd = 1;//动画透明度
sjdh = 0;//受击白色
impact_alarm_1 = 0;

bullet_damage = round(2 + global.level_wave * 0.3);//攻击力。

//对象被击退变量
boost_x = 0;//被命中时，被击退的距离(不需要修改)。
boost_y = 0;
boost_defense = 1;//击退抗性。

xx = 1;//用于怪物生受击动画。


//燃烧
burn_animation = 5;//用于燃烧动画。
burn_layer = 0;//燃烧层数。
burn_damage = 0;//燃烧伤害。
burn_damage_max = 0;
burn_alarm = 60;//燃烧伤害间隔。