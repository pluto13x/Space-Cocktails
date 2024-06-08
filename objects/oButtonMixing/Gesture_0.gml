with(iCupControl) {
	if cupExists and trayEmpty {
		makeCup = true;
	}
}
room_goto(rMixingStation);