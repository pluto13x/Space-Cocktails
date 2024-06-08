pressed = false;
capacity = 10;



//napravi i liquid
var inst = instance_create_layer(oCup.x, oCup.y, "layerLiquid", oLiquid);
with inst {
	x = oCup.x;
	y = oCup.y;
	if room = rMixingStation {
		image_xscale = 6;
		image_yscale = 6;
	}
	else {
		image_xscale = 5;
		image_yscale = 5;	
	}
	image_blend = iCupControl.liquidColor;
}