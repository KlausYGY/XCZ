attack_range = 120 + (global.player_magic_0_lv * 10); 
attack_loading = 0;
attack_loading_max = 20 - (global.player_magic_0_lv * 1);
if attack_loading_max <= 1 { attack_loading_max = 1; }
attack =  3 + (global.player_magic_0_lv * 1);
attack_repel = 2 + (global.player_magic_0_lv * 0.25);
dead = false;
