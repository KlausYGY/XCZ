//设置字体。
draw_set_font(fnt_ui);

//设置水平和垂直的对其方式，设置为中心对齐。
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if dano > 0 {draw_text_transformed_color(x, y, dano, xx, xx, 0, cor, cor, cor, cor, image_alpha);}
//重置对其方式。
draw_set_halign(fa_left);
draw_set_valign(fa_top);
