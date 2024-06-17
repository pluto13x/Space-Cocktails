width = 100;
height = 80;

margin = 10;
lineSpacing = 15;
x = room_width / 2 - width / 2;
y = room_height / 2 - height / 2;

position = 0;
menuLevel = 0;

//main menu
if iMenuControl.menuType == "main" {
	option[0,0] = "Start Game";
	option[0,1] = "Settings";
	option[0,2] = "Quit Game";
}
else {
	option[0,0] = "Resume Game";
	option[0,1] = "Settings";
	option[0,2] = "Main Menu";
}

//settings menu
option[1,0] = "Window size";
option[1,1] = "Brightness";
option[1,2] = "Controls";
option[1,3] = "Back";

optionLength = array_length(option[0]);

