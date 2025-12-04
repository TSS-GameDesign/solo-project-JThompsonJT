if room = Score_screen
{
draw_set_font(Font1); // Replace fnt_game_font with your actual font asset
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Draw the text at a specific position
    draw_text(683, 384, global.shown_score); 
}