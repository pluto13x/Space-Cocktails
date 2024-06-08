if iCupControl.trayEmpty == false {
	var inst = instance_create_layer(x, y - 70, "layerCup", oCup);
	with inst {
		if room = rBar {
			image_xscale = 5;
		    image_yscale = 5;
		}
		else if room = rMixingStation {
			image_xscale = 6;
			image_yscale = 6;
		}
	}
}