// start house map
current_level = ds_map_find_value(level_map , "start_house");

// attributes for start house
ds_map_add(current_level, "scrolling_level", false);
ds_map_add(current_level, "level_name", "start_house");
ds_map_add(current_level, "level_length", room_width ); 

object_list = ds_list_create();


// spawn player
//instance_create(room_width/5, room_width*4/5, obj_player);


// all object descriptions and variables


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_start_house_background );
ds_map_add(current_object, "object", obj_start_house_background );
ds_map_add(current_object, "depth", 100 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );

ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("bed");
ds_map_add(current_object, "sprite", spr_start_house_bed );
ds_map_add(current_object, "object", obj_start_house_bed );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 230 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 3 );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("ceiling");
ds_map_add(current_object, "sprite", spr_start_house_ceiling );
ds_map_add(current_object, "object", obj_start_house_ceiling );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );

ds_map_add(current_object, "st_exit", st_start_house_ceiling_exit);




current_object = scr_add_object("door");
ds_map_add(current_object, "sprite", spr_start_house_door );
ds_map_add(current_object, "object", obj_start_house_door );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", room_width-sprite_get_width( spr_start_house_right_wall )-sprite_get_width( spr_start_house_door ) );

ds_map_add(current_object, "y_position", walking_floor-sprite_get_height( spr_start_house_door ) );
ds_map_add(current_object, "x_move", 3 );

// state scripts
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "outside");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "touch");




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_start_house_ground );
ds_map_add(current_object, "object", obj_start_house_ground );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", room_height );




current_object = scr_add_object("left_wall");
ds_map_add(current_object, "sprite", spr_start_house_left_wall );
ds_map_add(current_object, "object", obj_start_house_left_wall );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );

ds_map_add(current_object, "st_exit", st_start_house_left_wall_exit);




current_object = scr_add_object("mini_fridge");
ds_map_add(current_object, "sprite", spr_start_house_mini_fridge );
ds_map_add(current_object, "object", obj_start_house_mini_fridge );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", room_width*2/5 + 88 );

ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_exit", st_slide_up_exit);




// poster descriptors
current_object = scr_add_object("poster");
ds_map_add(current_object, "sprite", spr_start_house_poster );
ds_map_add(current_object, "object", obj_start_house_poster );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
// lowest x position is against left wall
ds_map_add(current_object, "x_position", room_width/5 + 74 );

// lowest y position is against ceiling
ds_map_add(current_object, "y_position", room_height/5 + 100);

ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("right_wall");
ds_map_add(current_object, "sprite", spr_start_house_right_wall );
ds_map_add(current_object, "object", obj_start_house_right_wall );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", room_width );

ds_map_add(current_object, "y_position", 0 );

ds_map_add(current_object, "st_exit", st_start_house_right_wall_exit);




current_object = scr_add_object("television");
ds_map_add(current_object, "sprite", spr_start_house_television );
ds_map_add(current_object, "object", obj_start_house_television );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 800 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("window");
ds_map_add(current_object, "sprite", spr_start_house_window );
ds_map_add(current_object, "object", obj_start_house_window );
ds_map_add(current_object, "depth", 10 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 700 );
ds_map_add(current_object, "y_position", 240 );

ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_exit", st_slide_up_exit);
// add more here


ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

