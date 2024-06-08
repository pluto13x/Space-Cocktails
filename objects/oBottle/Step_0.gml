if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) and !pressed {
	pressed = true;
}


else if pressed and mouse_check_button_released(mb_left) { 
	pressed = false;
	/* flasa na casu
	if position_meeting(mouse_x, mouse_y, oCup) { //bojanje pica
		//ako je casa prazna, napuni je. ako nije, pola pola
		if oLiquid.image_blend = c_white {
			oLiquid.image_blend = drinkColor;
		}
		else {	
			oLiquid.image_blend = colorDrink(drinkColor, oLiquid.image_blend);
		}
		iCupControl.howMuchOfDrink[drinkIdx] += 1;
	}
	else /**/
	if position_meeting(mouse_x, mouse_y, oJigger) {
		oJigger.drinkIdx = drinkIdx;
		oJigger.howFull = oJigger.capacity; //napuni ceo jigger
		oJigger.drinkColor = drinkColor;
	}
	x = defaultx;
	y = defaulty;
}

if pressed {
	x = mouse_x;
	y = mouse_y;
	//sipaj u casu
	/*if position_meeting(mouse_x, mouse_y, oCup) {
		iCupControl.howMuchOfDrink[drinkIdx] += 1;
	}/**/
}
