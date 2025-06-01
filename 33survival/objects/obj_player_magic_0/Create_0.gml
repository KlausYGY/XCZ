attack_range = 120 + (global.player_magic_0_lv * 6); 
attack_loading = 0;
attack_loading_max = 20 - (global.player_magic_0_lv * 1.25);
if attack_loading_max <= 1 { attack_loading_max = 1; }
attack = round(3 + (global.player_magic_0_lv * 0.5));
attack_repel = 2 + (global.player_magic_0_lv * 0.1);
dead = false;
attack_accuracy = global.player_magic_0_lv * 0.5;