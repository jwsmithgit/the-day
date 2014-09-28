//mushroom map
current_level = ds_map_find_value(level_map , "mushroom");

// attributes for mushroom level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "mushroom");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Gigantus ); 

object_list = ds_list_create();


//mushroom objects


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_mushroom_background );
ds_map_add(current_object, "object", obj_mushroom_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("cloud_1");
ds_map_add(current_object, "sprite", spr_mushroom_cloud_1 );
ds_map_add(current_object, "object", obj_mushroom_cloud_1);
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", room_width);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "x_drift", ds_map_find_value(current_object, "x_move")/8 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("cloud_2");
ds_map_add(current_object, "sprite", spr_mushroom_cloud_2 );
ds_map_add(current_object, "object", obj_mushroom_cloud_2 );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", room_width);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "x_drift", ds_map_find_value(current_object, "x_move")/8 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("cloud_3");
ds_map_add(current_object, "sprite", spr_mushroom_cloud_3 );
ds_map_add(current_object, "object", obj_mushroom_cloud_3 );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", room_width);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "x_drift", ds_map_find_value(current_object, "x_move")/8 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("cloud_4");
ds_map_add(current_object, "sprite", spr_mushroom_cloud_4 );
ds_map_add(current_object, "object", obj_mushroom_cloud_4 );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", room_width);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "x_drift", ds_map_find_value(current_object, "x_move")/8 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("cloud_5");
ds_map_add(current_object, "sprite", spr_mushroom_cloud_5 );
ds_map_add(current_object, "object", obj_mushroom_cloud_5 );
ds_map_add(current_object, "depth", 90 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", room_width);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
ds_map_add(current_object, "x_drift", ds_map_find_value(current_object, "x_move")/8 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("grass");
ds_map_add(current_object, "sprite", spr_mushroom_grass );
ds_map_add(current_object, "object", obj_mushroom_grass );
ds_map_add(current_object, "depth", -40 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_mushroom_ground );
ds_map_add(current_object, "object", obj_mushroom_ground );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("hills");
ds_map_add(current_object, "sprite", spr_mushroom_hills );
ds_map_add(current_object, "object", obj_mushroom_hills );
ds_map_add(current_object, "depth", 80 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("mushroom_01");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_01 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_01 );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_02");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_02 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_02 );
ds_map_add(current_object, "depth", -100 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_03");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_03 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_03 );
ds_map_add(current_object, "depth", -50 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_04");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_04 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_04 );
ds_map_add(current_object, "depth", 28 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "space");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_05");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_05 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_05 );
ds_map_add(current_object, "depth", -10 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "space");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_06");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_06 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_06 );
ds_map_add(current_object, "depth", 36 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "space");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_07");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_07 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_07 );
ds_map_add(current_object, "depth", -14 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_08");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_08 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_08 );
ds_map_add(current_object, "depth", 44 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_09");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_09 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_09 );
ds_map_add(current_object, "depth", -18 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_10");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_10 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_10 );
ds_map_add(current_object, "depth", 52 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);
// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "rld");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_11");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_11 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_11 );
ds_map_add(current_object, "depth", -22 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "rld");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_12");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_12 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_12 );
ds_map_add(current_object, "depth", 60 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "rld");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("mushroom_13");
ds_map_add(current_object, "sprite", spr_mushroom_mushroom_13 );
ds_map_add(current_object, "object", obj_mushroom_mushroom_13 );
ds_map_add(current_object, "depth", -26 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "rld");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("sun");
ds_map_add(current_object, "sprite", spr_mushroom_sun );
ds_map_add(current_object, "object", obj_mushroom_sun );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));

//ds_map_add(current_object, "x_drift", .1 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);


/*
current_object = scr_add_object("tree_1");
ds_map_add(current_object, "sprite", spr_mushroom_tree_1 );
ds_map_add(current_object, "object", obj_mushroom_tree_1 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2.5 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "patch");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_2");
ds_map_add(current_object, "sprite", spr_mushroom_tree_2 );
ds_map_add(current_object, "object", obj_mushroom_tree_2 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2.5 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "patch");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_3");
ds_map_add(current_object, "sprite", spr_mushroom_tree_3 );
ds_map_add(current_object, "object", obj_mushroom_tree_3 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2.5 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);
// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "patch");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_4");
ds_map_add(current_object, "sprite", spr_mushroom_tree_4 );
ds_map_add(current_object, "object", obj_mushroom_tree_4 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2.5 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "patch");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_5");
ds_map_add(current_object, "sprite", spr_mushroom_tree_5 );
ds_map_add(current_object, "object", obj_mushroom_tree_5 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "interval" );
ds_map_add(current_object, "min_interval", room_width );
ds_map_add(current_object, "max_interval", room_width*3 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 2.5 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "patch");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_list_add(gates_chance, 100/7);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");
*/

// add more here


ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.
