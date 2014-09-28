//black and white map
current_level = ds_map_find_value(level_map , "bnw");

// attributes for black white level
ds_map_add(current_level, "scrolling_level", false);
ds_map_add(current_level, "level_name", "bnw");
ds_map_add(current_level, "level_length", room_width);
ds_map_add(current_level, "level_song", choose( 
Back_to_the_Waves, Gigantus, Haunted, Monochrome, 
Pathogenerator, Stretch, Stretch_II, The_Ocean_Floor )); // 

object_list = ds_list_create();

//black and white objects

current_object = scr_add_object("emporium");
ds_map_add(current_object, "sprite", spr_bnw_emporium );
ds_map_add(current_object, "object", obj_bnw_emporium );
ds_map_add(current_object, "depth", 20 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", room_width/2 - sprite_get_width( spr_bnw_emporium )/2);

ds_map_add(current_object, "y_position", walking_floor+2 );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_left_exit );




current_object = scr_add_object("ground");
ds_map_add(current_object, "sprite", spr_bnw_ground );
ds_map_add(current_object, "object", obj_bnw_ground );
ds_map_add(current_object, "depth", 4 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", 0);

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_down_exit );




current_object = scr_add_object("lamp");
ds_map_add(current_object, "sprite", spr_bnw_lamp );
ds_map_add(current_object, "object", obj_bnw_lamp );
ds_map_add(current_object, "depth", 2 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", room_width/4 - 30 );

ds_map_add(current_object, "y_position", walking_floor +6 );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_down_exit);



current_object = scr_add_object("lamp_2");
ds_map_add(current_object, "sprite", spr_bnw_lamp );
ds_map_add(current_object, "object", obj_bnw_lamp );
ds_map_add(current_object, "depth", 2 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", room_width*3/4 - 30 );

ds_map_add(current_object, "y_position", walking_floor +6 );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_down_exit);




current_object = scr_add_object("pig");
ds_map_add(current_object, "sprite", spr_bnw_pig );
ds_map_add(current_object, "object", obj_bnw_pig );
ds_map_add(current_object, "depth", 2 );

ds_map_add(current_object, "type", "set" );
ds_map_add(current_object, "x_position", room_width/2 );

ds_map_add(current_object, "y_position", walking_floor );
ds_map_add(current_object, "x_move", 3 );

ds_map_add(current_object, "st_enter", st_slide_up_enter );
ds_map_add(current_object, "st_exit", st_slide_down_exit);


ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.
