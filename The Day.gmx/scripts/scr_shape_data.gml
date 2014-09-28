//shape world map
current_level = ds_map_find_value(level_map , "shape");

// attributes for shape world level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "shape");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Monochrome ); 

object_list = ds_list_create();

//shape world objects


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_shape_background );
ds_map_add(current_object, "object", obj_shape_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("bar");
ds_map_add(current_object, "sprite", spr_shape_bar );
ds_map_add(current_object, "object", obj_shape_bar );
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "y_offset", room_height/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));


ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




/*current_object = scr_add_object("drop_square");
ds_map_add(current_object, "sprite", spr_shape_drop_square );
ds_map_add(current_object, "object", obj_shape_drop_square );
ds_map_add(current_object, "depth", 8 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 5 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", 1.8 );*/




current_object = scr_add_object("gear_blue");
ds_map_add(current_object, "sprite", spr_shape_gear_blue );
ds_map_add(current_object, "object", obj_shape_gear_blue );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width*1.5 );

ds_map_add(current_object, "y_position", -room_height/10 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gear_green");
ds_map_add(current_object, "sprite", spr_shape_gear_green );
ds_map_add(current_object, "object", obj_shape_gear_green );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width*1.5 );

ds_map_add(current_object, "y_position", -room_height/10 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("gear_pink");
ds_map_add(current_object, "sprite", spr_shape_gear_pink );
ds_map_add(current_object, "object", obj_shape_gear_pink );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width*1.5 );

ds_map_add(current_object, "y_position", -room_height/10 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "space");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("ground_color");
ds_map_add(current_object, "sprite", spr_shape_ground_color );
ds_map_add(current_object, "object", obj_shape_ground_color );
ds_map_add(current_object, "depth", 8 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("ground_tile");
ds_map_add(current_object, "sprite", spr_shape_ground_tile );
ds_map_add(current_object, "object", obj_shape_ground_tile );
ds_map_add(current_object, "depth", 4 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("lines");
ds_map_add(current_object, "sprite", spr_shape_lines );
ds_map_add(current_object, "object", obj_shape_lines );
ds_map_add(current_object, "depth", 24 );
ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", room_width );
ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", 0 );




current_object = scr_add_object("ribbon");
ds_map_add(current_object, "sprite", spr_shape_ribbon );
ds_map_add(current_object, "object", obj_shape_ribbon );
ds_map_add(current_object, "depth", 12 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 3 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));




current_object = scr_add_object("small_gear_1");
ds_map_add(current_object, "sprite", spr_shape_small_gear_1 );
ds_map_add(current_object, "object", obj_shape_small_gear_1 );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width*1.5 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("small_gear_2");
ds_map_add(current_object, "sprite", spr_shape_small_gear_2 );
ds_map_add(current_object, "object", obj_shape_small_gear_2 );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value( current_object, "sprite" )));
ds_map_add(current_object, "max_interval", room_width*1.5 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




/*current_object = scr_add_object("square");
ds_map_add(current_object, "sprite", spr_shape_square );
ds_map_add(current_object, "object", obj_shape_square );
ds_map_add(current_object, "depth", -2 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 5 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*4/5 );
ds_map_add(current_object, "x_move", 3.2 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);*/




current_object = scr_add_object("wash");
ds_map_add(current_object, "sprite", spr_shape_wash );
ds_map_add(current_object, "object", obj_shape_wash );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 3 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", obj_player.walk_right_speed );




// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

