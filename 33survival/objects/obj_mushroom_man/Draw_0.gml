/// @description 


draw_sprite_ext(sprite, image_index, x , y, xx * xscale, xx, 0, image_blend, image_alpha);
if sjdh = 1{
	tmd -=0.05;
	//hp_jc = hp;
	draw_sprite_ext(spr_slim_hurt0, image_index, x , y, xscale, 1, 0, image_blend, tmd);
}

//点燃特效
if burn_layer != 0 {
	//播放动画
	if burn_animation < 5 { burn_animation += 0.2; }
	if burn_animation >= 5 { burn_animation = 0; }
	draw_sprite_ext(spr_fire, burn_animation, x, y, 1, 1, 0,image_blend,image_alpha);
}