//玩家移动
function PlayerController(){
	//var _move_speed = argument0;

	if keyboard_check(ord("D"))
{
	shanx = shanx+50;
	spr = Player_move;
	Fx = -1;
	image_xscale = -1;
	x += move_speed;
	//闪避
	if keyboard_check_pressed(vk_space){if shan_bi_cd <=0{shan_bi_kg = 1;shan_bi_cd = shan_bi_cdinit}}
}


if keyboard_check(ord("A"))
{
	shanx = shanx-50;
	spr = Player_move;
	Fx = 1;
	image_xscale = 1;
	x -= move_speed;
	if keyboard_check_pressed(vk_space){if shan_bi_cd <=0{shan_bi_kg = 1;shan_bi_cd = shan_bi_cdinit}}
}


if keyboard_check(ord("S"))
{
	shany = shany+50;
	spr = Player_move;
	y += move_speed;
	if keyboard_check_pressed(vk_space){if shan_bi_cd <=0{shan_bi_kg = 1;shan_bi_cd = shan_bi_cdinit}}
}

if keyboard_check(ord("W"))
{
	shany = shany-50;
	spr = Player_move;
	y -= move_speed;
	if keyboard_check_pressed(vk_space){if shan_bi_cd <=0{shan_bi_kg = 1;shan_bi_cd = shan_bi_cdinit}}
}



///////////闪避
if shan_bi_kg{
	if shan_bi > 0  {
	move_towards_point(shanx, shany, 7);
	shan_bi --;
	}else{speed = 0; shan_bi = shan_bi_init; shan_bi_kg = 0;}
}



//松开按键事件
if keyboard_check_released(ord("D")){
	spr = Player;
	shanx = x;
}

if keyboard_check_released(ord("A")){
	spr = Player;
	shanx = x;
}

if keyboard_check_released(ord("W")){
	spr = Player;
	shany = y;
}

if keyboard_check_released(ord("S")){
	spr = Player;
	shany = y;
}









}

