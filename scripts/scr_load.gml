ini_open("ao_save");

//level
level = ini_read_real("Save", "level", level);
//room
room_x = ini_read_real("Save", "room_x", room_x);
room_y = ini_read_real("Save", "room_y", room_y);
//maps
for (var i = 0; i < ds_list_size(map_list); i++) {
    var read_string = ini_read_string("Save", "map_level" + string(i), ds_grid_write(ds_list_find_value(map_list, i)));
    ds_grid_read(ds_list_find_value(map_list, i), read_string);
}
//keys
var read_string = ini_read_string("Save", "unlocked_levels", ds_list_write(unlocked_levels));
ds_list_read(unlocked_levels, read_string);
//items
var read_string = ini_read_string("Save", "item_list", ds_list_write(item_list));
ds_list_read(item_list, read_string);

ini_close();
