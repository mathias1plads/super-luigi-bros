 input_left  =	keyboard_check(vk_left) ;
 input_right =	keyboard_check(vk_right) ;
 input_up    =	keyboard_check(vk_up) ;
 input_down	 =	keyboard_check(vk_down) ;
 input_walk  =  keyboard_check(vk_control)
 input_run   =  keyboard_check(vk_shift)
 
if (input_walk) {spd = w_spd }
else if (input_run) {spd = r_spd }
else       {spd = n_spd}

movex = 0;
moveY = 0;

movex = (input_right - input_left) * spd;

//collision check


x += movex
y += moveY

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
	}

}	
