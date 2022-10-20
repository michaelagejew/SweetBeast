// same basis as the enemy archetype but cant be a child due to interactions with the player

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
		show_debug_message("AHHHHHHH");
		running = true
		hspeed = chase_speed
	}
}
else{
	running = false
	hspeed = 0
}
