var level0 = ds_grid_create(9, 9);

ds_grid_add(level0, 4, 1, rm_level0_4_1);
ds_grid_add(level0, 5, 1, rm_level0_5_1);

ds_grid_add(level0, 3, 2, rm_level0_3_2);
ds_grid_add(level0, 4, 2, rm_level0_4_2);
ds_grid_add(level0, 5, 2, rm_level0_5_2);

ds_grid_add(level0, 3, 3, rm_level0_3_3);
ds_grid_add(level0, 4, 3, rm_level0_4_3);
ds_grid_add(level0, 5, 3, rm_level0_5_3);

ds_grid_add(level0, 2, 4, rm_level0_2_4);
ds_grid_add(level0, 3, 4, rm_level0_3_4);
ds_grid_add(level0, 4, 4, rm_level0_4_4);
ds_grid_add(level0, 5, 4, rm_level0_5_4);

ds_grid_add(level0, 2, 5, rm_level0_2_5);
ds_grid_add(level0, 3, 5, rm_level0_3_5);
ds_grid_add(level0, 4, 5, rm_level0_4_5);
ds_grid_add(level0, 5, 5, rm_level0_5_5);

ds_grid_add(level0, 3, 6, rm_level0_3_6);
ds_grid_add(level0, 4, 6, rm_level0_4_6);
ds_grid_add(level0, 5, 6, rm_level0_5_6);

return level0;
