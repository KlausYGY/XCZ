draw_sprite_ext(spr_magic_stone, random_mode, x, y, xx, xx, 0, image_blend, image_alpha);

//点燃特效
if burn_layer != 0 {
	//播放动画
	if burn_animation < 5 { burn_animation += 0.2; }
	if burn_animation >= 5 { burn_animation = 0; }
	draw_sprite_ext(spr_fire, burn_animation, x, y, 1, 1, 0,image_blend,image_alpha);
}