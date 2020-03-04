//hej
//gravity

if keyboard_check_pressed(ord("R")) game_restart();



 input_left  =	keyboard_check(ord("A"));
 input_right =	keyboard_check(ord("D"));
 input_up    =	keyboard_check(vk_space);
 
 input_walk  =  keyboard_check(vk_control)
 input_run   =  keyboard_check(vk_shift)
 
if (input_walk) {spd = w_spd }
else if (input_run) {spd = r_spd }
else       {spd = n_spd}

movex = 0;
moveY = 0;

movex = (input_right - input_left) * spd;

if (place_meeting(x, y+1, obj_collision)) and input_up { vsped = -jump_spd }
 vsped += grv 
 moveY = vsped
//collision check

//horisontal collision
if movex != 0 {
	if (place_meeting(x+movex, y, obj_collision)){
		repeat (abs(movex)){
		if (!place_meeting(x+sign(movex), y, obj_collision)){
			x += sign(movex);
		} else break 
		}
		movex = 0;	
	}
}
//vertical collsion
if moveY != 0 {
	if (place_meeting(x, y+moveY, obj_collision)){
		repeat (abs(moveY)){
			if (!place_meeting(x, y+sign(moveY), obj_collision)){
				y += sign(moveY);
			} else break 
		}
		moveY = 0;
		vsped =0;
	}

}	

x += movex
y += moveY

//test
if place_meeting(x,y,obj_mushroom)
{
	sprite_index = spr_bigluigi
}