//space map
current_level = ds_map_find_value(level_map , "space");

// attributes for shape world level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "space");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Pathogenerator ); 

object_list = ds_list_create();

//space world objects



current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_space_background );
ds_map_add(current_object, "object", obj_space_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);


ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("gem_lg_green");
ds_map_add(current_object, "sprite", spr_space_gem_lg_green );
ds_map_add(current_object, "object", obj_space_gem_lg_green );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_lg_red");
ds_map_add(current_object, "sprite", spr_space_gem_lg_red );
ds_map_add(current_object, "object", obj_space_gem_lg_red );
ds_map_add(current_object, "depth", -12 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor+40 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_sm_green");
ds_map_add(current_object, "sprite", spr_space_gem_sm_green );
ds_map_add(current_object, "object", obj_space_gem_sm_green );
ds_map_add(current_object, "depth", -4 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor+30 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_sm_purple");
ds_map_add(current_object, "sprite", spr_space_gem_sm_purple );
ds_map_add(current_object, "object", obj_space_gem_sm_purple );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_sm_red");
ds_map_add(current_object, "sprite", spr_space_gem_sm_red );
ds_map_add(current_object, "object", obj_space_gem_sm_red );
ds_map_add(current_object, "depth", 24 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);
// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_sm_teal");
ds_map_add(current_object, "sprite", spr_space_gem_sm_teal );
ds_map_add(current_object, "object", obj_space_gem_sm_teal );
ds_map_add(current_object, "depth", -16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor+40 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gem_sm_yellow");
ds_map_add(current_object, "sprite", spr_space_gem_sm_yellow );
ds_map_add(current_object, "object", obj_space_gem_sm_yellow );
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit );

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_list_add(gates_chance, 100/5);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait" );




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_space_ground);
ds_map_add(current_object, "object", obj_space_ground);
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("moon");
ds_map_add(current_object, "sprite", spr_space_moon );
ds_map_add(current_object, "object", obj_space_moon );
ds_map_add(current_object, "depth", 88 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));

//ds_map_add(current_object, "x_drift", .1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("mountain_back");
ds_map_add(current_object, "sprite", spr_space_mountain_back );
ds_map_add(current_object, "object", obj_space_mountain_back );
ds_map_add(current_object, "depth", 40 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("mountain_front");
ds_map_add(current_object, "sprite", spr_space_mountain_front );
ds_map_add(current_object, "object", obj_space_mountain_front );
ds_map_add(current_object, "depth", -20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




/*current_object = scr_add_object("planet_purple");
ds_map_add(current_object, "sprite", spr_space_planet_purple );
ds_map_add(current_object, "object", obj_space_planet_purple );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("planet_red");
ds_map_add(current_object, "sprite", spr_space_planet_red );
ds_map_add(current_object, "object", obj_space_planet_red );
ds_map_add(current_object, "depth", 94 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);*/




current_object = scr_add_object("sky");
ds_map_add(current_object, "sprite", spr_space_sky );
ds_map_add(current_object, "object", obj_space_sky );
ds_map_add(current_object, "depth", 80 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);
ds_map_add(current_object, "y_position", 0 );

//var object_x_position = ds_map_find_value( current_object, "x_position");
//var object_sprite_width = sprite_get_width(ds_map_find_value( current_object, "sprite"));
ds_map_add(current_object, "x_move",  0 );
//ds_map_add(current_object, "x_move",  ((object_x_position+object_sprite_width-room_width)/ds_map_find_value(current_level, "level_length"))*obj_player.walk_right_speed  );

ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("stars");
ds_map_add(current_object, "sprite", spr_space_stars );
ds_map_add(current_object, "object", obj_space_stars );
ds_map_add(current_object, "depth", 98 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("stars_2");
ds_map_add(current_object, "sprite", spr_space_stars );
ds_map_add(current_object, "object", obj_space_stars_2 );
ds_map_add(current_object, "depth", 98 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", sprite_get_height(spr_space_stars));
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("stars_3");
ds_map_add(current_object, "sprite", spr_space_stars );
ds_map_add(current_object, "object", obj_space_stars_3 );
ds_map_add(current_object, "depth", 98 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 2*sprite_get_height(spr_space_stars));
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);



// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

