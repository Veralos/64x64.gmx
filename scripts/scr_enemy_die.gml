var mods_x;
mods_x[0] = -1;
mods_x[1] = 1;

var mods_y;
mods_y[0] = -1;
mods_y[1] = 1;

for (var i = 0; i < 2; i++) {
    for (var j = 0; j < 2; j++) {
        var part = instance_create(x - sprite_xoffset + sprite_width / 2, y - sprite_yoffset + sprite_height / 2, obj_enemy_part);
        part.sprite_index = sprite_index;
        part.mod_x = mods_x[i];
        part.mod_y = mods_y[j];
    }
}
