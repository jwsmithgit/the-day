//patch map
current_level = ds_map_find_value(level_map , "patch");

// attributes for patch level
ds_map_add(current_level, "scrolling_level", true);
ds_map_add(current_level, "level_name", "patch");
ds_map_add(current_level, "level_length", level_length ); 
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // Back_to_the_Waves ); 

object_list = ds_list_create();

//patch objects


current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_patch_background );
ds_map_add(current_object, "object", obj_patch_background );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", 0);

ds_map_add(current_object, "st_enter", st_slide_left_enter);
ds_map_add(current_object, "st_exit", st_slide_left_exit);




current_object = scr_add_object("bush");
ds_map_add(current_object, "sprite", spr_patch_bush );
ds_map_add(current_object, "object", obj_patch_bush );
ds_map_add(current_object, "depth", 6 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "nature_value", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", ds_map_find_value( current_level, "level_length")/10);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 2.3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("cloud_1");
ds_map_add(current_object, "sprite", spr_patch_cloud_1 );
ds_map_add(current_object, "object", obj_patch_cloud_1 );
ds_map_add(current_object, "depth", 12 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "nature_value", sprite_get_width(ds_map_find_value(current_object, "sprite"))/2);
ds_map_add(current_object, "max_interval", ds_map_find_value( current_level, "level_length")/10);

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", 2 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_patch_ground );
ds_map_add(current_object, "object", obj_patch_ground );
ds_map_add(current_object, "depth", 4 );

ds_map_add(current_object, "type", "zero" );

ds_map_add(current_object, "x_position", 0);
ds_map_add(current_object, "y_position", walking_floor);
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter);
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("sign_1");
ds_map_add(current_object, "sprite", spr_patch_sign_1 );
ds_map_add(current_object, "object", obj_patch_sign_1 );
ds_map_add(current_object, "depth", 3 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", random(room_width) + 40 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "x_move", 2.4 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);




current_object = scr_add_object("sun");
ds_map_add(current_object, "sprite", spr_patch_sun );
ds_map_add(current_object, "object", obj_patch_sun );
ds_map_add(current_object, "depth", 14 );

ds_map_add(current_object, "type", "timed" );

ds_map_add(current_object, "y_position", 50);
ds_map_add(current_object, "y_offset", room_height*2/5);
ds_map_add(current_object, "x_move", room_width * (obj_player.walk_right_speed/ds_map_find_value(current_level, "level_length")));
//ds_map_add(current_object, "x_drift", .25 );

ds_map_add(current_object, "st_enter", st_slide_down_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);



current_object = scr_add_object("tree_1");
ds_map_add(current_object, "sprite", spr_patch_tree_1 );
ds_map_add(current_object, "object", obj_patch_tree_1 );
ds_map_add(current_object, "depth", -2 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "nature_value", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", ds_map_find_value( current_level, "level_length")/10);

ds_map_add(current_object, "y_position", walking_floor+6 );
ds_map_add(current_object, "x_move", 2.8 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");




current_object = scr_add_object("tree_2");
ds_map_add(current_object, "sprite", spr_patch_tree_2 );
ds_map_add(current_object, "object", obj_patch_tree_2 );
ds_map_add(current_object, "depth", 7 );

ds_map_add(current_object, "type", "nature" );
ds_map_add(current_object, "nature_value", sprite_get_width(ds_map_find_value(current_object, "sprite")));
ds_map_add(current_object, "max_interval", ds_map_find_value( current_level, "level_length")/10);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 2.1 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_up_exit);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "mushroom");
ds_list_add(gates_list, "bl");
ds_list_add(gates_list, "outside");
ds_list_add(gates_list, "rld");
ds_list_add(gates_list, "shape");
ds_list_add(gates_list, "space");
ds_list_add(gates_list, "color");
ds_list_add(gates_list, "genesis");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_list_add(gates_chance, 100/8);
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "wait");

// add more here


ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.
