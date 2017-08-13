ini_open("save");

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
ini_write_real("Save", "item_dash", item_dash);
ini_write_real("Save", "item_phase_dash", item_phase_dash);
ini_write_real("Save", "item_magnet", item_magnet);
ini_write_real("Save", "item_magnet_inverter", item_magnet_inverter);
ini_write_real("Save", "item_heat_shield", item_heat_shield);
ini_write_real("Save", "item_air_tank", item_air_tank);
ini_write_real("Save", "item_power_shot", item_power_shot);

ini_close();
