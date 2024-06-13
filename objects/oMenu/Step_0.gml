upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("Y"));

//find length of current level
optionLength = array_length(option[menuLevel]);


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
				case 0: //start game
					room_goto(rMixingStation);
					break;
				case 1: //settings
					menuLevel = 1;
					break;
				case 2: //quit game
					game_end();
				    break;
				break;
			}
				
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
					break;
				    break;	
				break;
			}
	}
}