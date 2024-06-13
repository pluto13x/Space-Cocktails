upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("Y"));

//selectuj opciju
position += downKey - upKey;
if position >= optionLength {
	position = 0;
}
if position < 0 {
	position = optionLength - 1;
}

//funkcionalne opcije
if acceptKey {
	switch(menuLevel) { 
		case 0: //main menu
			switch(position) {
				case 0: //start game / main menu
					if iMenuControl.menuType == "main" {
						room_goto(rMixingStation);
					}
					else {
						instance_destroy(id);	
					}
					break;
				case 1: //settings
					menuLevel = 1;
				    position = 0;
					break;
				case 2: //quit game / main menu
					if iMenuControl.menuType == "main" {
						game_end(0);
					}
					else {
						iMenuControl.menuType = "main";
						room_goto(rMainMenu);
					}
				    break;
				break;
			}
			break;
			
				
		case 1: //settings menu
			switch(position) {
				case 0: //Window size
					
					break;
				case 1: //Brightness
					
					break;
				case 2: //Controls
					
				    break;
				case 3: //Back
					menuLevel = 0;
					position = 1;
				    break;	
			}
			break;
	}   
	optionLength = array_length(option[menuLevel]);
}