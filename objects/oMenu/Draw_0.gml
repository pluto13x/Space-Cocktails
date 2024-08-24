draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_font(Manaspace);
draw_set_valign(fa_top);
draw_set_halign(fa_left)
for (var i = 0; i < optionLength; i += 1) {
	if mouse_y >= y + margin + lineSpacing * i and mouse_y <= y + margin + lineSpacing * i + 15 {
		position = i;
	}
	var optionColor = c_white;
	if i == position {
		optionColor = c_yellow;
	}
	draw_text_color(x + margin, y + margin + lineSpacing * i, option[menuLevel, i], optionColor, optionColor, optionColor, optionColor, 1);
}