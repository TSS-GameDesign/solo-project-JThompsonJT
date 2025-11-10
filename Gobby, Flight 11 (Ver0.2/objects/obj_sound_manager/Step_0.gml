if (current_sound_id == -1 || !audio_is_playing(current_sound_id)) {
    if (current_sound_index < array_length(sound_list)) {
        current_sound_id = audio_play_sound(sound_list[current_sound_index], 10, false);
        current_sound_index++;
    } else {
       
        current_sound_index = 0;
        current_sound_id = -1;
    }
}

if room = Volume_ctrl
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