var check_x = argument0;

with (obj_vault)
    solid = false;
    
var out = '0';

for (var check_y = 0; check_y < room_height; check_y += 4) {
    if (place_free(check_x, check_y))
        out =  '1';
} 

with (obj_vault)
    solid = false;

return out;
