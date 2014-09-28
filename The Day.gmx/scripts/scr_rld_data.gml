//red light district map
current_level = ds_map_find_value(level_map , "rld");

// attributes for red light district level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "rld");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Haunted ); 

object_list = ds_list_create();

//red light district objects


current_object = scr_add_object("arrows");
ds_map_add(current_object, "sprite", spr_rld_arrows );
ds_map_add(current_object, "object", obj_rld_arrows ) ;
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 3 );

ds_map_add(current_object, "y_position", walking_floor - 80 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);
// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "outside");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_rld_background );
ds_map_add(current_object, "object", obj_rld_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);





current_object = scr_add_object("circle");
ds_map_add(current_object, "sprite", spr_rld_circle );
ds_map_add(current_object, "object", obj_rld_circle );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));

//ds_map_add(current_object, "x_drift", .1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_rld_ground );
ds_map_add(current_object, "object", obj_rld_ground );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("heartbeat");
ds_map_add(current_object, "sprite", spr_rld_heartbeat );
ds_map_add(current_object, "object", obj_rld_heartbeat );
ds_map_add(current_object, "depth", 18 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("rectangle");
ds_map_add(current_object, "sprite", spr_rld_rectangle );
ds_map_add(current_object, "object", obj_rld_rectangle );
ds_map_add(current_object, "depth", 24 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" ))*11/10);
ds_map_add(current_object, "max_interval", room_width );

ds_map_add(current_object, "y_position", room_height/4 );
// ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("spinner");
ds_map_add(current_object, "sprite", spr_rld_spinner );
ds_map_add(current_object, "object", obj_rld_spinner );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" ) * 3));
ds_map_add(current_object, "max_interval", room_width*2 );

ds_map_add(current_object, "y_position", room_height*1/5 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");


// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

