/// @description 初始化敌人数据

//移动速度
moveSpd = 0.7;
hp = 6 + global.level_wave * 2;//血量
hp_jc = hp;

sprite_blinzk= 0;
sprite = spr_little_ghost;
xscale = 1;//朝向。
animation = 0;//使用的动画
tmd = 1;//动画透明度
sjdh = 0;//受击白色
impact_alarm_1 = 0;
image_speed = 0.5;//动画速度。

bullet_damage = 1 + global.level_wave * 1;//攻击力。
attack_loading = 0;//攻击冷却。

//对象被击退变量
boost_x = 0;//被命中时，被击退的距离(不需要修改)。
boost_y = 0;
boost_defense = 1;//击退抗性。


//燃烧
burn_layer = 0;
burn_damage = 0;
burn_damage_max = 0;
burn_alarm = 60;
burn_lock = false;
ani = 5;