if switchAliens {
	oBubble.visible = false;
	if goDown {
		y += 1;
		if y >= room_height {
			goDown = false;
			sprite_index = iAlienControl.alienSprites[iAlienControl.whichAlien];
		}	
	}
	else {
		y -= 1;
		if y <= defaulty {
			switchAliens = false;
			goDown = true;
			oBubble.visible = true;
		}
	}
}
