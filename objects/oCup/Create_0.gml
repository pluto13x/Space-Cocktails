pressed = false;
capacity = 10;



//napravi i liquid
var inst = instance_create_layer(oCup.x, oCup.y, "layerLiquid", oLiquid);
with inst {
	x = oCup.x;
	y = oCup.y;
	image_blend = iCupControl.liquidColor;
	//ovo je tu jer se nova instanca čaše pravi kad se prenosi u drugu sobu
}