var level_name, level, level_length, depth_list, depth_pointer_list, depth_length_list, depth_ratio_list;

// given the list to check
level_name = argument0;
level = ds_map_find_value(level_map, level_name);
level_length = ds_map_find_value(level, "level_length");


// list of all the depths
depth_list = ds_map_find_value( level, "depth_list" );
depth_pointer_list = ds_map_find_value( level, "depth_pointer_list" );
depth_length_list = ds_map_find_value( level, "depth_length_list" );
depth_ratio_list = ds_map_find_value( level, "depth_ratio_list" );

// loop through all depths
for( var i=0; i< ds_list_size( depth_list ); i++){

    var current_depth_string, current_depth_string, current_depth, current_depth_objects, current_depth_length;
    // depth name: depth_#
    current_depth_string = ds_list_find_value( depth_list, i );
    // depth number string: # (no "depth_")
    current_depth = string_copy( current_depth_string, string_length("depth_")+1, 10);
    // depth object list, has every object in that depth
    current_depth_objects = ds_map_find_value( level, current_depth_string );
    // how long the current depth is, with extra room width
    current_depth_length = ds_list_find_value( depth_length_list, i );
    // what the ratio of distance left in depth to distance left in game
    depth_length_ratio = ds_list_find_value( depth_ratio_list, i );
    
    var current_type, xobject_list, x_position_list, yposition_list, start_distance, final_distance;
    // object type of current depth
    current_type = ds_map_find_value( ds_map_find_value( level, ds_list_find_value( current_depth_objects, 0 )), "type" );
    
    xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
    yposition_list = ds_map_find_value( level, "yposition_"+current_depth);
    
    // keeps track of what object to check to spawn next since the lists are sorted
    xposition_pointer = ds_list_find_value(depth_pointer_list, i );

    
    // check right side of screen
    start_distance = total_distance*depth_length_ratio;
    if( start_distance > level_length*depth_length_ratio ){
        start_distance = level_length*depth_length_ratio;
    }
    final_distance = start_distance + room_width;
    
    // make sure the pointer doesnt go beyond the bounds of the list
    if ( xposition_pointer < ds_list_size(xposition_list) ){
        
        // grabs objects data to spawn
        object_map = ds_map_find_value(level, ds_list_find_value(xobject_list, xposition_pointer));
        object_x = ds_list_find_value(xposition_list, xposition_pointer);
        object_y = ds_list_find_value(yposition_list, xposition_pointer);
        
        // spawn all objects between start and end of map.
        if( object_x <= final_distance){
            // create instance
            /*show_debug_message(current_depth);
            show_debug_message(string(level_length));
            show_debug_message(string(final_distance));
            show_debug_message(string(depth_length_ratio));
            show_debug_message(string(object_x));*/
            instance_create( room_width - (final_distance - object_x), object_y, ds_map_find_value( object_map, "object"));
            
            // increment pointer and replace in pointer list
            xposition_pointer ++;
            ds_list_replace(depth_pointer_list, i, xposition_pointer);
        }    
    }
}

