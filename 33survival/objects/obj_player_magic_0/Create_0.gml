//冷却时间。
attack_loading = 0;
attack_loading_max = 20 - (global.player_magic_0_lv * 1.25);
//冷却最低值。
if attack_loading_max <= 1 { attack_loading_max = 1; }

//过量提升，如果冷却到达了最低值时，继续降低则将转换在伤害上。
excess = 0;
attack_loading_excess = 20 - (global.player_magic_0_lv * 1.25);
if attack_loading_excess < 0 { 
	excess = abs(attack_loading_excess);
}
//伤害。
attack = round(3 + (global.player_magic_0_lv * 0.5) + excess);
//击退力。
attack_repel = 2 + (global.player_magic_0_lv * 0.1);
//精度。
attack_accuracy = global.player_magic_0_lv * 0.5;
//穿甲。
armor_piercing = global.armor_piercing;
//投射物速度。
bullet_speed = 4 + global.bullet_speed * 0.2;
//索敌范围。
attack_range = 120 + (global.player_magic_0_lv * 6); 
//子弹存在时间。
hp_alarm = round(attack_range / bullet_speed);

//施加燃烧。
burn = 50 + (global.player_magic_0_lv * 4);//燃烧概率。
burn_damage = round(2 + (global.player_magic_0_lv * 0.5));//燃烧伤害。

//销毁。
dead = false;