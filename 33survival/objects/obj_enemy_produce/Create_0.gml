//怪物生成方案。
mode = 0;

//使用的素材。
sprite = slim_spawn;

//怪物生成时间。
produce_alarm = 120;

//设置x帧后触发alarm[0]。
alarm[0] = produce_alarm;

//用于怪物生成动画。
xx = 1;

assist = instance_create_layer(x, y, "Instances", obj_assist);//创建方向指针。
assist.sprite = slim_spawn;//指针精灵。
assist.xx = 0.5;//精灵大小。
assist.dir_lock = true;//禁用旋转。
assist.pad = 10;//距离视野边框的距离。