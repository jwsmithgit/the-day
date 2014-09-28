//title world map
current_level = ds_map_find_value(level_map , "start_repeat");

// attributes for shape world level
ds_map_add(current_level, "scrolling_level", false);
ds_map_add(current_level, "level_name", "start_repeat");
ds_map_add(current_level, "level_length", room_width ); 

object_list = ds_list_create();

//title objects
current_object = scr_add_object("background");
ds_map_add(current_object, "sprite", spr_start_repeat_background );
ds_map_add(current_object, "object", obj_start_repeat_background);
ds_map_add(current_object, "depth", -120 );

ds_map_add(current_object, "type", "zero" );
ds_map_add(current_object, "x_position", 0 );

ds_map_add(current_object, "y_position", 0 );
ds_map_add(current_object, "st_enter", st_slide_up_enter );

// add more here
ds_map_add ( current_level, "list", object_list ); // list of everything in map, for iteration.

