if (can_be_hit == true) //If object can be hit subtracts 2 hp and 10 xp before setting temporary invincibility
{
	hp -= 2;
	xp -= 10;
	can_be_hit = false;
	invincibility_time = invincibility_duration;
}
if (hp <= 0) //Restarts the game if player dies
{
	
	image_index = 8
	room_goto(Score_screen);
}