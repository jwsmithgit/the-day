//genesis map
current_level = ds_map_find_value(level_map , "genesis");

// attributes for shape world level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "genesis");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Back_to_the_Waves ); 

object_list = ds_list_create();

//color world objects


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_genesis_background );
ds_map_add(current_object, "object", obj_genesis_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




/*current_object = scr_add_object("background_strip");
ds_map_add(current_object, "sprite", spr_genesis_background_strip );
ds_map_add(current_object, "object", obj_genesis_background_strip );
ds_map_add(current_object, "depth", 98 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 100 );
ds_map_add(current_object, "x_move", 0 );

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);*/




current_object = scr_add_object("bigtree");
ds_map_add(current_object, "sprite", spr_genesis_bigtree );
ds_map_add(current_object, "object", obj_genesis_bigtree );
ds_map_add(current_object, "depth", -20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*2);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_genesis_ground );
ds_map_add(current_object, "object", obj_genesis_ground );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("tree_1");
ds_map_add(current_object, "sprite", spr_genesis_tree_1 );
ds_map_add(current_object, "object", obj_genesis_tree_1 );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", 113 );
ds_map_add(current_object, "max_interval", room_width/2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("tree_2");
ds_map_add(current_object, "sprite", spr_genesis_tree_2 );
ds_map_add(current_object, "object", obj_genesis_tree_2 );
ds_map_add(current_object, "depth", 20);

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", 113 );
ds_map_add(current_object, "max_interval", room_width/2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("tree_3");
ds_map_add(current_object, "sprite", spr_genesis_tree_3 );
ds_map_add(current_object, "object", obj_genesis_tree_3 );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", 113 );
ds_map_add(current_object, "max_interval", room_width/2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("tree_4");
ds_map_add(current_object, "sprite", spr_genesis_tree_4 );
ds_map_add(current_object, "object", obj_genesis_tree_4 );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", 15);
ds_map_add(current_object, "max_interval", room_width/2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("tree_5");
ds_map_add(current_object, "sprite", spr_genesis_tree_5 );
ds_map_add(current_object, "object", obj_genesis_tree_5 );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", 15 );
ds_map_add(current_object, "max_interval", room_width/2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("treetop_back");
ds_map_add(current_object, "sprite", spr_genesis_treetop_back );
ds_map_add(current_object, "object", obj_genesis_treetop_back );
ds_map_add(current_object, "depth", 60 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("treetop_front");
ds_map_add(current_object, "sprite", spr_genesis_treetop_front );
ds_map_add(current_object, "object", obj_genesis_treetop_front );
ds_map_add(current_object, "depth", -40 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", -80 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("water");
ds_map_add(current_object, "sprite", spr_genesis_water );
ds_map_add(current_object, "object", obj_genesis_water );
ds_map_add(current_object, "depth", -30 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor +80 );
ds_map_add(current_object, "x_move", 2 );

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);


// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

