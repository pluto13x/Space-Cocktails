pressed = false;
defaultx = x;
defaulty = y;
drinkColor = make_color_rgb(0, 0, 0);
drinkName = string_delete(object_get_name(object_index), 1, 1);

if drinkListDone = false {
	drinkIdx = ds_list_size(drinkList);
	ds_list_add(drinkList, drinkName);
	show_debug_message("added" + string(drinkIdx));
}
else {
	drinkIdx = ds_list_find_index(drinkList, drinkName);
}

