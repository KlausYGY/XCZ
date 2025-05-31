//长按退出游戏

if gameend < 100 { gameend += 1.5; }
//如果变量“gameend”值小于60，那么每帧加1.5。

if gameend >= 100 { game_end(); }
//如果变量“gameend”值大于等于60，那么退出游戏。

textalpha_controller = true;
//按住“esc”键时，变量“textalpha_controller”值为真，用于文字透明度的变化。
