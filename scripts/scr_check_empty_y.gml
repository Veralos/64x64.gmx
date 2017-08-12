var check_y = argument0;

for (var check_x = 0; check_x < room_width; check_x += 4) {
    if (place_free(check_x, check_y))
            return '1';
} 

return '0';
