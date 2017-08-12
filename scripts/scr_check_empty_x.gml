var check_x = argument0;

for (var check_y = 0; check_y < room_height; check_y += 4) {
    if (place_free(check_x, check_y))
        return '1';
} 

return '0';
