if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) and !pressed {
	pressed = true;
}

//isprazni casu
if mouse_check_button_pressed(mb_right) and position_meeting(mouse_x, mouse_y, id) {
	emptyCup();
}

//drag and drop casu
if pressed and mouse_check_button_released(mb_left) {
	pressed = false;
	//stavi na tacnu
	if place_meeting(x, y, oTray) {
		x = oTray.x;
		y = oTray.y;
		iCupControl.trayEmpty = false;
	}
	//daj vanzemaljcu
	else if place_meeting(x, y, oAlien) {
		instance_destroy(id);
		iCupControl.trayEmpty = true;
		//sledeca musterija
		oAlien.switchAliens = true;
		with iAlienControl { 
			whichAlien += 1;
			if (whichAlien >= howManyAliens) {
				whichAlien = 0;
			}
		}
		
	}
	//u bar sobi vrati na tacnu 
	else if room == rBar {
		x = oTray.x;
		y = oTray.y;
	}
	//vrati na sto
	else {
		x = iCupControl.defaultx;
		y = iCupControl.defaulty;
		iCupControl.trayEmpty = true;
	}
}

if pressed {
	x = mouse_x;
	y = mouse_y;
}


