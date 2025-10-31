var center_point = random_range(40, 400);
var hp_distance = random_range(1000, 10000);
var spread = 100
if global.current_level == 1
{
	spread = random_range(100, 150);
}
else if global.current_level = 5
{
	spread = random_range(90, 135);
}
else if global.current_level = 10
{
	spread = random_range(75, 100);
}
else if global.current_level = 15
{
	spread = random_range(60, 75);
}
else if global.current_level = 20
{
	game_end()
}


instance_create_layer(1100, center_point + spread, "instances", obj_obstacle);
instance_create_layer(1100, center_point - spread, "instances", obj_obstacle_2);
instance_create_layer(hp_distance, center_point, "instances", obj_health_up);
instance_create_layer(hp_distance, center_point, "instances", obj_xp_up);

alarm_set(0, 180);