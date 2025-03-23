if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, oJigger) and !pressed {
	pressed = true;
}

if mouse_check_button_pressed(mb_right) and position_meeting(mouse_x, mouse_y, oJigger) {
	if drinkIdx > -1  { //ako je pun, isprazni
		drinkIdx = -1;
		oJiggerLiquid.image_blend = c_white;
		
	}
	else { //ako je prazan, obrni jigger
		if capacity == 50 {
			sprite_index = sJigger25;
			capacity = 25;//ml
			oJiggerLiquid.sprite_index = sJigger25Liquid;
		}
		else {
			sprite_index = sJigger50;
			capacity = 50;//ml
			oJiggerLiquid.sprite_index = sJigger50Liquid;
		}
	}
}

if pressed and mouse_check_button_released(mb_left) {
	pressed = false;
	// oboji tečnost u shakeru
	if position_meeting(mouse_x, mouse_y, oCup) and drinkIdx > -1 {
		if oLiquid.image_blend = c_white {
			oLiquid.image_blend = drinkColor;
		}
		else {	
			oLiquid.image_blend = colorDrink(drinkColor, oLiquid.image_blend);
		}
		iCupControl.liquidColor = oLiquid.image_blend;
		iCupControl.howMuchOfDrink[drinkIdx] += capacity;
		drinkIdx = -1;
		oJiggerLiquid.image_blend = c_white;
	}
	y = defaulty;
	x = defaultx;
}

if pressed {
	x = mouse_x;
	y = mouse_y;
}

