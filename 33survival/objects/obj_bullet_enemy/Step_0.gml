//子弹存在时间。
if bullet_hp > 0 { bullet_hp --;}
if bullet_hp <= 0 { instance_destroy(); }

//用于怪物生成动画。
if xx > 1 {
	xx = lerp(xx, 1, 0.2);
}