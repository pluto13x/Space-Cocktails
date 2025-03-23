if setup == false {
	setup = true;
	draw_set_font(mago2);
	pageNumber = array_length(text);
	
	for (var i = 0; i < pageNumber; i++) {
		textLength[i] = string_length(text[i]);
	}
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
draw_set_color(c_black);

draw_text(x - sprite_width/2+15, y- sprite_height/2+5, "Jedan koktel");
draw_text(x - sprite_width/2+15, y- sprite_height/2+15, "za mene");
