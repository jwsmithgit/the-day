//color map
current_level = ds_map_find_value(level_map , "color");

// attributes for shape world level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "color");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Stretch_II 


object_list = ds_list_create();

//color world objects


current_object = scr_add_object("axe");
ds_map_add(current_object, "sprite", spr_color_axe );
ds_map_add(current_object, "object", obj_color_axe );
ds_map_add(current_object, "depth", 12 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 2 );

ds_map_add(current_object, "y_position", walking_floor );
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




current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_color_background );
ds_map_add(current_object, "object", obj_color_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("dirt");
ds_map_add(current_object, "sprite", spr_color_dirt );
ds_map_add(current_object, "object", obj_color_dirt );
ds_map_add(current_object, "depth", 18 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*1.5 );
ds_map_add(current_object, "max_interval", room_width*1.5);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("dirtpile");
ds_map_add(current_object, "sprite", spr_color_dirtpile );
ds_map_add(current_object, "object", obj_color_dirtpile );
ds_map_add(current_object, "depth", 18 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*2 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_color_ground );
ds_map_add(current_object, "object", obj_color_ground );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("hay");
ds_map_add(current_object, "sprite", spr_color_hay );
ds_map_add(current_object, "object", obj_color_hay );
ds_map_add(current_object, "depth", 18 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*1.5 );
ds_map_add(current_object, "max_interval", room_width*2 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);





current_object = scr_add_object("ladder");
ds_map_add(current_object, "sprite", spr_color_ladder );
ds_map_add(current_object, "object", obj_color_ladder );
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 2 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside")
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("moon");
ds_map_add(current_object, "sprite", spr_color_moon );
ds_map_add(current_object, "object", obj_color_moon );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));
               
//ds_map_add(current_object, "x_drift", .1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("pitchfork");
ds_map_add(current_object, "sprite", spr_color_pitchfork );
ds_map_add(current_object, "object", obj_color_pitchfork );
ds_map_add(current_object, "depth", 16 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 3 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside")
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("scarecrow");
ds_map_add(current_object, "sprite", spr_color_scarecrow );
ds_map_add(current_object, "object", obj_color_scarecrow );
ds_map_add(current_object, "depth", 36 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", walking_floor+4 );
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




current_object = scr_add_object("star_1");
ds_map_add(current_object, "sprite", spr_color_star_1 );
ds_map_add(current_object, "object", obj_color_star_1 );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *2);
ds_map_add(current_object, "max_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *6);
ds_map_add(current_object, "min_sparse_interval", room_width/4);
ds_map_add(current_object, "max_sparse_interval", room_width/2);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("star_2");
ds_map_add(current_object, "sprite", spr_color_star_2 );
ds_map_add(current_object, "object", obj_color_star_2 );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *2);
ds_map_add(current_object, "max_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *6);
ds_map_add(current_object, "min_sparse_interval", room_width/4);
ds_map_add(current_object, "max_sparse_interval", room_width/2);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );

ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("star_3");
ds_map_add(current_object, "sprite", spr_color_star_3 );
ds_map_add(current_object, "object", obj_color_star_3 );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *2);
ds_map_add(current_object, "max_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")) *6);
ds_map_add(current_object, "min_sparse_interval", room_width/4);
ds_map_add(current_object, "max_sparse_interval", room_width/2);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*3/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("tractor");
ds_map_add(current_object, "sprite", spr_color_tractor );
ds_map_add(current_object, "object", obj_color_tractor );
ds_map_add(current_object, "depth", 40 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_list_add(gates_chance, 100/4);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_1");
ds_map_add(current_object, "sprite", spr_color_tree_1 );
ds_map_add(current_object, "object", obj_color_tree_1 );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_sparse_interval", room_width*2/3);
ds_map_add(current_object, "min_dense_interval", room_width);
ds_map_add(current_object, "max_dense_interval", room_width*2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);
// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_2");
ds_map_add(current_object, "sprite", spr_color_tree_2 );
ds_map_add(current_object, "object", obj_color_tree_2 );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_sparse_interval", room_width*2/3);
ds_map_add(current_object, "min_dense_interval", room_width);
ds_map_add(current_object, "max_dense_interval", room_width*2);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");


// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

