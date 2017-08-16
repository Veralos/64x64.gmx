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
            var room_num = real(string_char_at(room_string, 1));
            if (room_num > 0) {
                var blend = c_white;
                switch (room_num) {
                    case 2:
                        blend = make_color_rgb(255, 255, 0);
                        break;
                    case 3:
                        blend = make_color_rgb(0, 255, 255);
                        break;
                    case 4:
                        blend = make_color_rgb(255, 0, 255);
                        break;
                }
                draw_sprite_ext(spr_map_square, 0, draw_x + col * 3, draw_y + row * 3, 1, 1, 0, blend, 1);
            }
        }
        for (var i = 0; i < 4; i++) {
            if (string_char_at(room_string, i + 2) == '1')
                draw_sprite(spr_map_square_edge, i, draw_x + col * 3, draw_y + row * 3);
        }
    }
}


