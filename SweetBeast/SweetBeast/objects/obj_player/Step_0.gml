// Ladder Check
if (instance_place(x, y, obj_ladder)) {
	if (keyboard_check(vk_up) || keyboard_check(vk_down)){
		climbing = true
		vspeed = 0
		gravity = 0
		sprite_index = spr_climbing
	}
}
else {
	climbing = false
	//sprite_index = spr_player 
}

if(climbing) {
	if (keyboard_check(vk_up)) { // Up to Climb Up
		vspeed = climb_speed
	}
	else if (keyboard_check(vk_down)) { // Down to Climb Down
		vspeed = -climb_speed	
	}
	else {
		vspeed = 0	// Don't climb if button not pressed
	}
	
	if(instance_place(x, y+1, obj_block)){
			climbing = false
			sprite_index = spr_player
	}
}

else {
	
	//Controls
	move = false
	if (keyboard_check(vk_up)) and (instance_place(x, y+1, obj_block)){
		vspeed = -jump_height
	}
	if (keyboard_check(vk_right)) and !instance_place(x+walk_speed, y, obj_block){
		x = x + walk_speed
		image_xscale=-1;
		move = true
	}
	if (keyboard_check(vk_left) and !instance_place(x-walk_speed, y, obj_block)){
		x = x-walk_speed
		image_xscale=1;
		move = true
	}
	if (!move){
		sprite_index = spr_player // If we're not moving, we want the default sprite
	} else{
		sprite_index = spr_playermove
	}
	
	// Gravity: no gravity if block underneath, gravity otherwise
	if (instance_place(x, y+1, obj_block)){
			gravity = 0
		} else {
			gravity = 0.5
		}
	if (vspeed > 8){ //gravity limit, prevents clipping through the floor
		vspeed = 8
	}


	//Hiding action
	if keyboard_check_pressed(ord("Z")) and instance_place(x, y, obj_hide){ //If the player overlaps with the hiding spot and presses Z
		visible = false
	}
	if !instance_place(x, y, obj_hide){
		visible=true
	}
}
if keyboard_check_pressed(ord("B")) and instance_place(x, y, obj_bed){ // if the player is on the bed and presses "B", the day variable will be incremented
	day += 1 
}

if ++day {
	countdown = 120
}

if obj_gameManager.countdown <= 0 {
	game_end()
}