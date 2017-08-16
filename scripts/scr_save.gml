ini_open("ao_save");

//level
ini_write_real("Save", "level", level);
//room
ini_write_real("Save", "room_x", room_x);
ini_write_real("Save", "room_y", room_y);
//maps
for (var i = 0; i < ds_list_size(map_list); i++) {
    ini_write_string("Save", "map_level" + string(i), ds_grid_write(ds_list_find_value(map_list, i)));
}
//keys
ini_write_string("Save", "unlocked_levels", ds_list_write(unlocked_levels));
//items
ini_write_string("Save", "item_list", ds_list_write(item_list));

ini_close();
