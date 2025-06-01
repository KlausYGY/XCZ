//如果被击中时，计算击退力与自身击退抗性的指，结果为被击退的距离。
x += boost_x * boost_defense;
y += boost_y * boost_defense;
boost_x = lerp(boost_x, 0, 0.1);
boost_y = lerp(boost_y, 0, 0.1);

//用于怪物生成动画。
if xx > 1 {
	xx = lerp(xx, 1, 0.4);
}

//动画结束销毁自己。
if animation < 5 { animation += 0.5; }
if animation >= 5 { instance_destroy(); }