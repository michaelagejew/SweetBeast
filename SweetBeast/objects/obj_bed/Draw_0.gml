/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_player){
	if (obj_player.draw_text1 == true){
		
		draw_self();
		
		draw_set_valign(fa_center)
		draw_set_halign(fa_middle)

		draw_set_font(12)
		draw_text(obj_bed.x, obj_bed.y - 50, "Press B to sleep")

	}
}






