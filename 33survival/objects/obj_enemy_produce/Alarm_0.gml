//重复生成。
alarm[0] = produce_alarm;

//生成方案。
switch (mode) {
	case 0:
		//一次生成1个史莱姆。
		instance_create_layer(x, y, "Instances", Enemy_Slim);
	break;
		
	case 1:
		//一次生成1-2个史莱姆。
		repeat (irandom_range(1,2)) {
			instance_create_layer(x, y, "Instances", Enemy_Slim);
		}
	break;
		
	case 2:
		//一次生成1-3个怪，百分之70概率是史莱姆，百分之30是小幽灵。
		repeat (irandom_range(1,3)) {
			var _enemy_random = irandom_range(0,100);
			if _enemy_random < 70 {
				instance_create_layer(x, y, "Instances", Enemy_Slim);
			}else{
				instance_create_layer(x, y, "Instances", obj_little_ghost);
			}
		}
	break;
	
		//没用的。
	default:
		//instance_create_layer(x, y, "Instances", Enemy_Slim);
	break;
}