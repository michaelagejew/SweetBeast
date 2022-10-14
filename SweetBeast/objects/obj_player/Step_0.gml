
// Gravity: no gravity if block underneath, gravity otherwise
if (instance_place(x, y+1, obj_block)){
		gravity = 0
	} else {
		gravity = 0.5
	}
if (vspeed > 8){ //gravity limit, prevents clipping through the floor
	vspeed = 8
}
	

//Controls
if (keyboard_check(vk_up)) and (instance_place(x, y+1, obj_block)){
	vspeed = -jump_height
}
if (keyboard_check(vk_right)) and !instance_place(x+walk_speed, y, obj_block){
	x = x + walk_speed
}
if (keyboard_check(vk_left) and !instance_place(x-walk_speed, y, obj_block)){
	x = x-walk_speed
}


//Hiding action
if keyboard_check_pressed(ord("Z")) and instance_place(x, y, obj_hide){ //If the player overlaps with the hiding spot and presses Z
	visible = false
}
if !instance_place(x, y, obj_hide){
	visible=true
}