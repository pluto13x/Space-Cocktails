if room = rMixingStation and iCupControl.cupExists == false {
	createCup(iCupControl.defaultx, iCupControl.defaulty);
	iCupControl.cupExists = true;
}