var map = argument0;
var draw_x = argument1;
var draw_y = argument2;

for (var col = 0; col < ds_grid_width(map); col++) {
    for (var row = 0; row < ds_grid_width(map); row++) {
        var room_string = ds_grid_get(map, col, row);
        if (string_char_at(room_string, 1) == '1')
            draw_sprite(spr_map_square, 0, draw_x + col * 4, draw_y + row * 4);
        for (var i = 0; i < 4; i++) {
            if (string_char_at(room_string, i + 2) == '1')
                draw_sprite(spr_map_square_edge, i, draw_x + col * 4, draw_y + row * 4);
        }
    }
}


