if switchAliens {
	oBubble.visible = false;
	if goDown {
		y += 5;
		if y >= 800 {
			goDown = false;
			sprite_index = iAlienControl.alienSprites[iAlienControl.whichAlien];
		}	
	}
	else {
		y -= 5;
		if y <= 288 {
			switchAliens = false;
			goDown = true;
			oBubble.visible = true;
		}
	}
}
