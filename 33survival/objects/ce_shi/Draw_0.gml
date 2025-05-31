/// @description 

draw_sprite(Player,0,x,y);



draw_text(x-30, y+5, hp);
draw_text(x-30, y+25, burn_layer);

//点燃特效
if burn_layer != 0 {
	//播放动画
	if ani < 5 { ani += 0.2; }
	if ani >= 5 { ani = 0; }
	draw_sprite_ext(spr_fire, ani, x, y, 1, 1, 0,image_blend,image_alpha);
}

//显示掉血量
if hp != hp_jc{
	
	draw_text(x-30, y+17,hp_jc-hp);
		hp_jc = hp;

}
