var _sprite = argument0;
var x_mod = argument1;
var y_mod = argument2;
var x_draw = argument3;
var x_draw = argument4;

var q_width = sprite_get_width(_sprite) / 4;
var q_height = sprite_get_height(_sprite) / 4;

draw_sprite_part(_sprite, 0, q_width + x_mod * q_width, q_height + y_mod * q_height, q_width * 2, q_height * 2, x - q_width + x_mod * q_width, y - q_height + y_mod * q_height);
