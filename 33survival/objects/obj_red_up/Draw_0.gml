//绘制素材。
draw_set_font(fnt_ui);

draw_sprite_ext(sprite, image_index, x, y, xx * 2, xx * 2, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 26, y - 2, "红色属性强化", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

draw_text_transformed_color(x - 4 , y + 30 + (xx_lock * 8), level, 1, 1, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_red >= (level * 5) {
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( exp_level ) , 0.4, 0.4, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}


if random_up_text_mode = 1 {
	draw_text_transformed_color(x - 26, y + 60, "! 穿透提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "穿透 + "  + string( random_up_text_darw ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 2 {
	draw_text_transformed_color(x - 26, y + 60, "! 攻击速度提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "攻击速度为  "  + string( global.attack_speed  ) + string( "倍" ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}
if random_up_text_mode = 3 {
	draw_text_transformed_color(x - 26, y + 60, "! 攻击力提升 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "攻击力为 + "  + string( global.attack ) + string( "倍" ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}