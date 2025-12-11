if room = Room1 //When game is playing plays songs in order on loop
{
	if global.Volume = false
	{
		audio_stop_all();
	}
	else if (current_sound_id == -1 || !audio_is_playing(current_sound_id)) 
	{
	    if (current_sound_index < array_length(sound_list)) {
	        current_sound_id = audio_play_sound(sound_list[current_sound_index], 10, false);
	        current_sound_index++;
	    } 
		else 
		{
       
	        current_sound_index = 0;
	        current_sound_id = -1;
	    }
	}
}
else if room = Volume_ctrl //Helps with the mute controls
{
	if global.Volume = false
	{
		audio_stop_all();
	}
}
else
{
	if (current_sound_id == -1 || !audio_is_playing(current_sound_id)) {
    if (current_sound_index < array_length(sound_list)) {
        current_sound_id = audio_play_sound(sound_list[current_sound_index], 10, false);
        current_sound_index++;
		 } else {
       
        current_sound_index = 0;
        current_sound_id = -1;
		 }
	}
}
var sound_play = 1
if room = Title
{
	if sound_play = 1
	{
		audio_play_sound(Title_Music, 1, true);
		sound_play = 0
	}
}
else
{
	audio_stop_sound(Title_Music)
}