/// @description Insert description here
// You can write your code in this editor

// Gravity: no gravity if block underneath, gravity otherwise
if (instance_place(x, y+1, obj_block)){
		gravity = 0
	} else {
		gravity = 0.5
	}
if (vspeed > 8){ //gravity limit, prevents clipping through the floor
	vspeed = 8
}
	
if(instance_exists(obj_player) and (obj_player.visible)){
	if(point_in_triangle(obj_player.x, obj_player.y, x, y, x+view_distance, y-100, x+view_distance, y+100)){
		show_debug_message("I SEE YOU BOY");
		chasing = true
		hspeed = chase_speed
	}
}
else{
	chasing = false
	hspeed = walk_speed
}
