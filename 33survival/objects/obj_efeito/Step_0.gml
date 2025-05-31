//飘字的大小，速度和透明度变化效果。
xx = lerp(0.5, xx, 0.85);
speed = lerp(0, speed, 0.85);
image_alpha = lerp(0, speed, 0.9);

if image_alpha <= 0 { instance_destroy(); }//透明度为0删除自己。