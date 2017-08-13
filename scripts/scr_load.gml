ini_open("save");

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
item_dash = ini_read_real("Save", "item_dash", item_dash);
item_phase_dash = ini_read_real("Save", "item_phase_dash", item_phase_dash);
item_magnet = ini_read_real("Save", "item_magnet", item_magnet);
item_magnet_inverter = ini_read_real("Save", "item_magnet_inverter", item_magnet_inverter);
item_heat_shield = ini_read_real("Save", "item_heat_shield", item_heat_shield);
item_air_tank = ini_read_real("Save", "item_air_tank", item_air_tank);
item_power_shot = ini_read_real("Save", "item_power_shot", item_power_shot);

ini_close();
