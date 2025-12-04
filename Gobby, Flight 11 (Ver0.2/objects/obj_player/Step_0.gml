//action(jumping/flying movement
if (mouse_check_button_released(mb_left))
{
	forceup = -5;
}

if (mouse_check_button_released(mb_right))
{
	forceup = -5;
}

if (keyboard_check_released(vk_space))
{
	forceup = -5;
}

if (keyboard_check_released(vk_up))
{
	forceup = -5;
}

y += forceup;
forceup += 0.10;

//animation(changes sprite based on if object is going up or down)
if (y > yprevious)
{
	sprite_index = spr_player_down;
	maxangle = -15;
}
else
{
	sprite_index = spr_player_up;
	maxangle = 15;
}

//apply angle
angle = lerp(angle, maxangle, 0.1);
image_angle = angle;
 
//Checks if invicibility_time is more than 0
if (invincibility_time > 0)
{
	invincibility_time--;
}
//If time is less than or equal 0, make hitable
if (invincibility_time <= 0)
{
	can_be_hit = true
}
if y <= 0 //Throws player down if they are above acceptable area
{
	y = -1;
}
if y >= 576 //Restarts if player hits the ground
{
	
	room_restart()
}

frame_counter ++; //Adds 1 to the frame_counter
if frame_counter >= 180 //Adds xp if frame_counter is greater than or equal to 180 then resets counter
{
	add_xp(15);
	frame_counter = 0;
}

if hp = hp_total
{
	image_index = 0;
}
else if hp = 8
{
	image_index = 1;
}
else if hp = 6
{
	image_index = 2;
}
else if hp = 4
{
	image_index = 3;
}
else if hp = 2
{
	image_index = 4;
}else if hp = 0
{
	image_index = 5;
}