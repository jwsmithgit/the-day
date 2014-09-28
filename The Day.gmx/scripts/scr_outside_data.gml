// outside map
current_level = ds_map_find_value(level_map , "outside");

// attributes for outside level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "outside");
ds_map_add(current_level, "level_length", level_length);
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Stretch );
object_list = ds_list_create();



current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_outside_background );
ds_map_add(current_object, "object", obj_outside_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);



current_object = scr_add_object("broadway");
ds_map_add(current_object, "sprite", spr_outside_broadway );
ds_map_add(current_object, "object", obj_outside_broadway );
ds_map_add(current_object, "depth", 34 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 2 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/2);
ds_list_add(gates_chance, 100/2);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("cloud");
ds_map_add(current_object, "sprite", spr_outside_cloud );
ds_map_add(current_object, "object", obj_outside_cloud );
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
ds_map_add(current_object, "sprite", spr_outside_grass );
ds_map_add(current_object, "object", obj_outside_grass );
ds_map_add(current_object, "depth", -10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_outside_ground );
ds_map_add(current_object, "object", obj_outside_ground );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("mailbox");
ds_map_add(current_object, "sprite", spr_outside_mailbox );
ds_map_add(current_object, "object", obj_outside_mailbox );
ds_map_add(current_object, "depth", 12 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", 800);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

// state scripts
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "space");
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




current_object = scr_add_object("picket_fence");
ds_map_add(current_object, "sprite", spr_outside_picket_fence );
ds_map_add(current_object, "object", obj_outside_picket_fence );
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("rainbow");
ds_map_add(current_object, "sprite", spr_outside_rainbow );
ds_map_add(current_object, "object", obj_outside_rainbow );
ds_map_add(current_object, "depth", 40 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", choose(0,0,1) );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 75);
ds_list_add(gates_chance, 25);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("shrub");
ds_map_add(current_object, "sprite", spr_outside_shrub );
ds_map_add(current_object, "object", obj_outside_shrub );
ds_map_add(current_object, "depth", 30 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_sparse_interval", sprite_get_width(ds_map_find_value(current_object, "sprite"))*3/4);
ds_map_add(current_object, "max_sparse_interval", room_width/3);
ds_map_add(current_object, "min_dense_interval", room_width/2);
ds_map_add(current_object, "max_dense_interval", room_width*2);

ds_map_add(current_object, "y_position", scr_y_spawn( spr_outside_shrub ));
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




current_object = scr_add_object("spot_light");
ds_map_add(current_object, "sprite", spr_outside_spot_light );
ds_map_add(current_object, "object", obj_outside_spot_light );
ds_map_add(current_object, "depth", -2 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", 10 );

ds_map_add(current_object, "y_position", 204 );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("start_house");
ds_map_add(current_object, "sprite", spr_outside_start_house );
ds_map_add(current_object, "object", obj_outside_start_house );
ds_map_add(current_object, "depth", 0 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("stars");
ds_map_add(current_object, "sprite", spr_outside_stars );
ds_map_add(current_object, "object", obj_outside_stars );
ds_map_add(current_object, "depth", 96 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));
//ds_map_add(current_object, "x_drift", .01 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("sun");
ds_map_add(current_object, "sprite", spr_outside_sun );
ds_map_add(current_object, "object", obj_outside_sun );
ds_map_add(current_object, "depth", 92 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 0);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("tea");
ds_map_add(current_object, "sprite", spr_outside_tea );
ds_map_add(current_object, "object", obj_outside_tea );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "spread" );
ds_map_add(current_object, "number", 1 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", scr_set_speed_by_depth(ds_map_find_value(current_object, "depth")));

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("tree");
ds_map_add(current_object, "sprite", spr_outside_tree );
ds_map_add(current_object, "object", obj_outside_tree );
ds_map_add(current_object, "depth", 36 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "min_dense_interval", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_dense_interval", room_width*2/3);
ds_map_add(current_object, "min_sparse_interval", room_width);
ds_map_add(current_object, "max_sparse_interval", room_width*2);

ds_map_add(current_object, "y_position", scr_y_spawn( spr_outside_tree ));
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



/*current_object = scr_add_object("spot_light_flip");
ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "sprite", spr_end_spot_light_flip );
ds_map_add(current_object, "object", obj_end_spot_light_flip );
ds_map_add(current_object, "depth", -1 );
ds_map_add(current_object, "x_position", ds_map_find_value(current_level, "level_length") - 10);
ds_map_add(current_object, "y_position", 176 );
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);


current_object = scr_add_object("start_house_flip");
ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "sprite", spr_end_start_house_flip );
ds_map_add(current_object, "object", obj_end_start_house_flip );
ds_map_add(current_object, "depth", 4 );
ds_map_add(current_object, "x_position", ds_map_find_value(current_level, "level_length") );
ds_map_add(current_object, "y_position", scr_y_spawn( spr_end_start_house_flip ) );
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);


current_object = scr_add_object("picket_fence_flip");
ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "sprite", spr_end_picket_fence_flip );
ds_map_add(current_object, "object", obj_end_picket_fence_flip );
ds_map_add(current_object, "depth", 6 );
ds_map_add(current_object, "x_position", 0 );
ds_map_add(current_object, "y_position", scr_y_spawn( spr_end_picket_fence_flip ));
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);


current_object = scr_add_object("mailbox_flip");
ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "sprite", spr_end_mailbox_flip );
ds_map_add(current_object, "object", obj_end_mailbox_flip );
ds_map_add(current_object, "depth", 1 );
var picket_fence = ds_map_find_value(current_level, "picket_fence_flip");
var picket_fence_x_position = ds_map_find_value(picket_fence, "x_position");
ds_map_add(current_object, "x_position", picket_fence_x_position + sprite_get_width( spr_end_mailbox_flip ));
ds_map_add(current_object, "y_position", scr_y_spawn( spr_end_mailbox_flip ) );
// state scripts
ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit); */


ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.
