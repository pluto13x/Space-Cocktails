function colorDrink(newColor, existingColor) {
	var r = (color_get_red(existingColor) + color_get_red(newColor)) / 2;
	var g = (color_get_green(existingColor) + color_get_green(newColor)) / 2;
	var b = (color_get_blue(existingColor) + color_get_blue(newColor)) / 2;		
	return make_color_rgb(r, g, b);
}

function createCup(defaultx, defaulty, color = c_white) {
	instance_create_layer(defaultx, defaulty, "layerCup", oCup);
}

function emptyCup() {
	oLiquid.image_blend = c_white;
	for (var i = 0; i < array_length(iCupControl.howMuchOfDrink); i++) {
		iCupControl.howMuchOfDrink[i] = 0;
	}
	iCupControl.liquidColor = c_white;
}