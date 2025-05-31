/// @description 
tmd_time --;
//ran_shao();

if tmd_time <= 0 {
	tmd-=0.02;
	if tmd <= 0 {instance_destroy();}
}
