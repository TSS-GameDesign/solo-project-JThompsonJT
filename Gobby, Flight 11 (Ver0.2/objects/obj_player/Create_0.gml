forceup = 0; //Decides how fast the sprite moves up
angle = 0; //Tells the angle the sprite is currently at
maxangle = 0; //Declares the max angle it can move
hp_total = 10; //States the total hp the player can have
hp = hp_total; //Starts the current health at the total health the player may have
xp = 0; //Tracks current xp collected
xp_require = 100; //Declares the requirement to level up
global.current_level = 1; //Sets the current level the player is
can_be_hit = true; //Tracks when the player can be hit
invincibility_time = 0; //Tells how long the player has left before they aren't invincible
invincibility_duration = 60; //Declares the time in frames for how long player is invincible
frame_counter = 0; //Tracks how many frames have went by
global.total_score = frame_counter/60
function add_xp(_xp_to_add)
//Function add_xp(_xp_to_add) adds xp and if player has more or exactly enough xp to level up brings them up a level however brings them down a level if they have negative xp
{
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		global.current_level ++;
		xp -= xp_require;
		xp_require *= 1.4;
		hp_total += 5;
		hp = hp_total;
	}
	else if xp = 0
	{
		global.current_level --;
		xp += xp_require;
		xp_require /= 1.4;
		hp_total -= 5;
	}
}
