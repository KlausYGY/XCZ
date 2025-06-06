//绘制素材。
draw_set_font(fnt_ui);

draw_sprite_ext(sprite, image_index, x, y, xx * 2, xx * 2, direction, image_blend, image_alpha);

draw_text_transformed_color(x - 26, y - 2, "高爆弹", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

draw_text_transformed_color(x - 4 , y + 30 + (xx_lock * 8), global.boom_bullet, 1, 1, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);

if global.exp_red >= (global.boom_bullet * 30) {
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( global.boom_bullet * 30 ) , 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}else{
	draw_text_transformed_color(x - 22, y + 12, "所需红色元素:" + string( global.boom_bullet * 30 ) , 0.4, 0.4, 0,  c_red,  c_red,  c_red,  c_red, image_alpha);
}


if random_up_text_mode = 1 {
	draw_text_transformed_color(x - 26, y + 60, "! 子弹命中敌人时造成范围伤害 !", 0.6, 0.6, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
	draw_text_transformed_color(x - 26, y + 80, "范围伤害为子弹伤害的0.66,但不会照成燃烧。 ", 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
		draw_text_transformed_color(x - 26, y + 80, "爆炸范围为: "  + string( global.boom_bullet * 16 + 16 ), 0.4, 0.4, 0,  c_white,  c_white,  c_white,  c_white, image_alpha);
}