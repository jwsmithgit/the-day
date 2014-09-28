//create a database of everything for random generation
//object variables of game master
total_distance = 0;
level_distance = 0;
walking_floor = room_height *4/5;
player_speed = 2.5;
spawn_rest = false;
repeated = false;
start_seed = random_get_seed();


// music
current_song = noone;
old_song = noone;

// controls
virtual_key_add(0,0,room_width,room_height, vk_space);

random_set_seed(start_seed);


//level map
level_map = ds_map_create(); // holds level names as keys with their map of objects as values
object_list = ds_list_create();
ds_list_add(object_list, "start");
ds_list_add(object_list, "start_house");
ds_list_add(object_list, "start_repeat");
level_map = scr_add_list_of_maps_to_map(object_list, level_map);

// every level's data
scr_start_data();
scr_start_house_data();
scr_start_repeat_data();


// post level set up organization for usaga
// for each level
level_list = ds_map_find_value(level_map, "list");
// only spawn the title screen and the start house at start of game;
for(var i=0; i< 3; i++){
    level_name = ds_list_find_value(level_list, i);
    map_for_level = ds_map_find_value(level_map, level_name);
    
    scr_create_depth_lists(map_for_level); // sort into lists by depth, works
    scr_randomize_positions(map_for_level); // add random items to xposition list
    scr_choose_gates(map_for_level); // choose gates for each object that has one
    scr_choose_ypositions(map_for_level); // choose y level for each object
}
