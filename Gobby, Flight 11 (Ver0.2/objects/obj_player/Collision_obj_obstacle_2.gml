if (can_be_hit == true) //If able to be hit takes 2 health and 10 xp before setting invincibility
{
	hp -= 2;
	xp -= 10;
	can_be_hit = false;
	invincibility_time = invincibility_duration;
}
if (hp <= 0) //Kills player if health is 0
{
	
	room_restart();
}