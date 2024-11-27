pressed = false;
defaultx = x;
defaulty = y;

capacity = 25; //koliko ml moze da stane
drinkIdx = -1; //puno čega (-1 = prazno)
drinkColor = make_color_rgb(0, 0, 0); //boja pica u jiggeru

var inst = instance_create_layer(x, y, "layerJiggerLiquid", oJiggerLiquid);
with inst {
	x = oJigger.x;
	y = oJigger.y;
}