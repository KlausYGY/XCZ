//子弹存在时间。
if bullet_hp > 0 { bullet_hp --;}
if bullet_hp <= 0 { instance_destroy(); }