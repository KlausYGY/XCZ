if textalpha_controller = true {
	if textalpha < 1
	{ textalpha += 0.1; }
}else{
	if textalpha > 0
	{ textalpha -= 0.1; }
}
//当变量“textalpha_controller”值为真，变量“textalpha”值每帧加0.1直到等于1。
//当变量“textalpha_controller”值为否，变量“textalpha”值每帧减0.1直到等于0。

#region 调试模式

//检测F1键的开启与松开。
var _debug_on = keyboard_check_pressed(vk_f1);
var _debug_off = keyboard_check_released(vk_f1);

if _debug_off {
	if global.debug = true { debug_lock = true; } else { debug_lock = false;}
}
if _debug_on and debug_lock = false { global.debug = true; }
if  _debug_on and debug_lock = true { global.debug = false; }

#endregion