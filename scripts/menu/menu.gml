function mouseOnMenu(menu){
	if mouse_x > menu.bbox_left + menu.margin and mouse_x < menu.bbox_right - menu.margin
		and mouse_y > menu.bbox_top + menu.margin and mouse_y < menu.bbox_bottom - menu.margin {
		return true;
	}
}