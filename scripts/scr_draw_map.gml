var map = argument0;
var flash = argument1;
var room_x = argument2;
var room_y = argument3;
var draw_x = argument4;
var draw_y = argument5;

for (var col = 0; col < ds_grid_width(map); col++) {
    for (var row = 0; row < ds_grid_width(map); row++) {
        var room_string = ds_grid_get(map, col, row);
        if (!(col == room_x && row == room_y && flash)) {
            if (string_char_at(room_string, 1) == '1')
                draw_sprite(spr_map_square, 0, draw_x + col * 3, draw_y + row * 3);
        }
        for (var i = 0; i < 4; i++) {
            if (string_char_at(room_string, i + 2) == '1')
                draw_sprite(spr_map_square_edge, i, draw_x + col * 3, draw_y + row * 3);
        }
    }
}


