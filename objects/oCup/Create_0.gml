pressed = false;
capacity = 10;



//napravi i liquid
var inst = instance_create_layer(oCup.x, oCup.y, "layerLiquid", oLiquid);
with inst {
	x = oCup.x-30;
	y = oCup.y-30;
	image_blend = iCupControl.liquidColor;
}