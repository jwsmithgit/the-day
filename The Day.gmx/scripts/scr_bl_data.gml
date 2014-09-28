//black light map
current_level = ds_map_find_value(level_map , "bl");

// attributes for black light level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "bl");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // The_Ocean_Floor ); 

object_list = ds_list_create();


//black light objects


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_bl_background );
ds_map_add(current_object, "object", obj_bl_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("bulb");
ds_map_add(current_object, "sprite", spr_bl_bulb );
ds_map_add(current_object, "object", obj_bl_bulb );
ds_map_add(current_object, "depth", 50 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 3 );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("cloud");
ds_map_add(current_object, "sprite", spr_bl_cloud );
ds_map_add(current_object, "object", obj_bl_cloud );
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




/*
current_object = scr_add_object("cloud_fade");
ds_map_add(current_object, "sprite", spr_bl_cloud_fade );
ds_map_add(current_object, "object", obj_bl_cloud_fade );
ds_map_add(current_object, "depth", 40 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "nature_value", sprite_get_width(ds_map_find_value(current_object, "sprite"))/2;
ds_map_add(current_object, "max_interval", ds_map_find_value( current_level, "level_length")/10;

ds_map_add(current_object, "x_move",  ( 1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);*/




current_object = scr_add_object("flower_1");
ds_map_add(current_object, "sprite", spr_bl_flower_1 );
ds_map_add(current_object, "object", obj_bl_flower_1 );
ds_map_add(current_object, "depth", -10 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*3/4);
ds_map_add(current_object, "max_sparse_interval", room_width/3);
ds_map_add(current_object, "min_dense_interval", room_width/2);
ds_map_add(current_object, "max_dense_interval", room_width);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "rld");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("flower_2");
ds_map_add(current_object, "sprite", spr_bl_flower_2 );
ds_map_add(current_object, "object", obj_bl_flower_2 );
ds_map_add(current_object, "depth", 18 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*3/4);
ds_map_add(current_object, "max_sparse_interval", room_width/3);
ds_map_add(current_object, "min_dense_interval", room_width/2);
ds_map_add(current_object, "max_dense_interval", room_width);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("flower_3");
ds_map_add(current_object, "sprite", spr_bl_flower_3 );
ds_map_add(current_object, "object", obj_bl_flower_3 );
ds_map_add(current_object, "depth", 34 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*3/4);
ds_map_add(current_object, "max_sparse_interval", room_width/3);
ds_map_add(current_object, "min_dense_interval", room_width/2);
ds_map_add(current_object, "max_dense_interval", room_width);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("grass");
ds_map_add(current_object, "sprite", spr_bl_grass );
ds_map_add(current_object, "object", obj_bl_grass );
ds_map_add(current_object, "depth", -20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor + 6);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("grass_2");
ds_map_add(current_object, "sprite", spr_bl_grass_2 );
ds_map_add(current_object, "object", obj_bl_grass_2 );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("grass_back");
ds_map_add(current_object, "sprite", spr_bl_grass_back );
ds_map_add(current_object, "object", obj_bl_grass_back );
ds_map_add(current_object, "depth", 60 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("grass_blur");
ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "sprite", spr_bl_grass_blur );
ds_map_add(current_object, "object", obj_bl_grass_blur );

ds_map_add(current_object, "depth", -40 );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor + 80);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




/*current_object = scr_add_object("star");
ds_map_add(current_object, "sprite", spr_bl_star );
ds_map_add(current_object, "object", obj_bl_star );
ds_map_add(current_object, "depth", 84 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_sparse_interval", room_width/3);
ds_map_add(current_object, "min_dense_interval", room_width/2);
ds_map_add(current_object, "max_dense_interval", room_width);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*3/5);
ds_map_add(current_object, "x_move", (((room_width)/ds_map_find_value(current_level, "level_length"))*obj_player.walk_right_speed)- room_width);

//ds_map_add(current_object, "x_drift", .25 )
ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);*/




current_object = scr_add_object("stars");
ds_map_add(current_object, "sprite", spr_bl_stars );
ds_map_add(current_object, "object", obj_bl_stars );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", 0 );

ds_map_add(current_object, "st_enter", st_slide_down_enter);
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("sun");
ds_map_add(current_object, "sprite", spr_bl_sun );
ds_map_add(current_object, "object", obj_bl_sun );
ds_map_add(current_object, "depth", 92 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));

//ds_map_add(current_object, "x_drift", .1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("tree_1");
ds_map_add(current_object, "sprite", spr_bl_tree_1 );
ds_map_add(current_object, "object", obj_bl_tree_1 );
ds_map_add(current_object, "depth", -14 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*2);
ds_map_add(current_object, "max_sparse_interval", room_width);
ds_map_add(current_object, "min_dense_interval", room_width);
ds_map_add(current_object, "max_dense_interval", room_width*2);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 3.2 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_list_add(gates_chance, 100/3);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");



current_object = scr_add_object("tree_2");
ds_map_add(current_object, "sprite", spr_bl_tree_2 );
ds_map_add(current_object, "object", obj_bl_tree_2 );
ds_map_add(current_object, "depth", 24 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*2);
ds_map_add(current_object, "max_sparse_interval", room_width);
ds_map_add(current_object, "min_dense_interval", room_width);
ds_map_add(current_object, "max_dense_interval", room_width*2);

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "color");
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
