if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, oJigger) and !pressed {
	pressed = true;
}

if mouse_check_button_pressed(mb_right) and position_meeting(mouse_x, mouse_y, oJigger) {
	if howFull > 0 { //ako je pun, isprazni
		drinkIdx = -1;
		howFull = 0;
	}
	else { //ako je prazan, obrni jigger
		image_yscale *= -1;
		if image_yscale < 0 {
			capacity = 50;//ml
		}
		else {
			capacity = 25;//ml
		}
	}
}

if pressed and mouse_check_button_released(mb_left) {
	pressed = false;
	if position_meeting(mouse_x, mouse_y, oCup) and drinkIdx > -1 {
		if oLiquid.image_blend = c_white {
			oLiquid.image_blend = drinkColor;
		}
		else {	
			oLiquid.image_blend = colorDrink(drinkColor, oLiquid.image_blend);
		}
		iCupControl.liquidColor = oLiquid.image_blend;
		iCupControl.howMuchOfDrink[drinkIdx] += howFull;
		drinkIdx = -1;
		howFull = 0;
	}
	y = defaulty;
	x = defaultx;
}

if pressed {
	x = mouse_x;
	y = mouse_y;
}

