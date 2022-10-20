/// @description Insert description here
// You can write your code in this editor


		
	draw_set_valign(fa_left)
	draw_set_halign(fa_top)

	draw_set_font(12)
	draw_text(8, 9, "Time left to feed the beast: " + string(countdown))
	draw_text(8, 30, "Day: " + string(obj_player.day))


