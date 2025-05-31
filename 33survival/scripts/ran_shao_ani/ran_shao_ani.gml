// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function ran_shao_ani(){
	
//点燃特效
if burn_layer != 0 {
	//播放动画
	if ani < 5 { ani += 0.2; }
	if ani >= 5 { ani = 0; }
	draw_sprite_ext(spr_fire, ani, x, y, 1, 1, 0,image_blend,image_alpha);
}

//显示掉血量

}