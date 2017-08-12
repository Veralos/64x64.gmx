var unlocked_levels = argument0;
var level = argument1;
var lift_selected = argument2;
var draw_x = argument3;
var draw_y = argument4;

for (var i = 0; i < 5; i++) {
    draw_set_alpha(1);
    if (ds_list_find_index(unlocked_levels, i) == -1)
        draw_set_alpha(0.5);
        
    draw_set_color(c_white);
    if (level == i)
        draw_set_color(c_yellow);
        
    var text = "Level " + string(i);
    if (lift_selected == i)
        text = "> " + text + " <";
    draw_text(draw_x, draw_y + 5 * i, text);
}

draw_set_alpha(1);
