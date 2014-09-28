// randomized game variables
level_length = random(5000)+5000 ;
// music
current_song = noone;
old_song = noone;
start_pitch = 0.5 + random(1);
end_pitch = 0.5 + random(1);

object_list = ds_list_create();
ds_list_add(object_list, "bl"); // black light
//ds_list_add(object_list, "bnw"); // black and white
ds_list_add(object_list, "color");
ds_list_add(object_list, "genesis");
ds_list_add(object_list, "mushroom");
ds_list_add(object_list, "outside");
//ds_list_add(object_list, "patch");
ds_list_add(object_list, "rld"); // red light district
ds_list_add(object_list, "shape");
ds_list_add(object_list, "space");
// add more levels here
level_map = scr_add_list_of_maps_to_map(object_list, level_map);

scr_bl_data();
//scr_bnw_data();
scr_color_data();
scr_genesis_data();
scr_mushroom_data();
scr_outside_data();
//scr_patch_data();
scr_rld_data();
scr_shape_data();
scr_space_data();


// create rest of the levels when tv is touched
//random_set_seed( start_seed );
level_list = ds_map_find_value(level_map, "list");
for(var i=3; i< ds_list_size(level_list); i++){

    var level_name = ds_list_find_value(level_list, i);
    map_for_level = ds_map_find_value(level_map, level_name);
    
    scr_create_depth_lists(map_for_level); // sort into lists by depth, works
    scr_randomize_positions(map_for_level); // add random items to xposition list
    scr_choose_gates(map_for_level); // choose gates for each object that has one
    scr_choose_ypositions(map_for_level); // choose y level for each object that has offset
}
