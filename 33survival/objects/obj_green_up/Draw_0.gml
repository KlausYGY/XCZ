//绘制素材。
draw_set_font(fnt_ui);

draw_sprite_ext(sprite, image_index, x, y, xx * 2, xx * 2, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 26, y - 2, "绿色属性强化", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

draw_text_transformed_color(x - 4 , y + 30 + (xx_lock * 8), level, 1, 1, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_green >= (level * 5) {
	draw_text_transformed_color(x - 22, y + 12, "所需绿色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 22, y + 12, "所需绿色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}


if random_up_text_mode = 1 {
	draw_text_transformed_color(x - 26, y + 60, "! 玩家血量上限提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "玩家血量上限 + "  + string( random_up_text_darw ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 2 {
	draw_text_transformed_color(x - 26, y + 60, "! 玩家自然回血提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "玩家自然回血 + "  + string( random_up_text_darw ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 3 {
	draw_text_transformed_color(x - 26, y + 60, "! 元素吸取范围提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "元素吸取范围 + "  + string( random_up_text_darw ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 4 {
	draw_text_transformed_color(x - 26, y + 60, "! 冲刺无敌时间提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "冲刺无敌时间 + "  + string( random_up_text_darw ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 5 {
	draw_text_transformed_color(x - 26, y + 60, "! 防御力提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "敌人造成的伤害为 : "  + string( global.defense ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}