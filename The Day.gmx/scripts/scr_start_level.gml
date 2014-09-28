var level_name, level, level_length, depth_list, depth_pointer_list, depth_length_list, depth_ratio_list;

// flush texture pages
draw_texture_flush();

// given the list to check
level_name = argument0;
level = ds_map_find_value(level_map, level_name);
level_length = ds_map_find_value(level, "level_length");

// switch songs
scr_switch_songs(level);

// list of all the depths
depth_list = ds_map_find_value( level, "depth_list" );
depth_pointer_list = ds_map_find_value( level, "depth_pointer_list" );
depth_length_list = ds_map_find_value( level, "depth_length_list" );
depth_ratio_list = ds_map_find_value( level, "depth_ratio_list" );


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
    
    // go until the rightmost screen object.
    start_distance = total_distance*depth_length_ratio;
    if( start_distance > level_length*depth_length_ratio ){
        start_distance = level_length*depth_length_ratio;
    }
    final_distance = start_distance + room_width;
    
    
    // go through every object in xposition list
    for( var j=0; j< ds_list_size(xposition_list); j++ ){
    
        // objects position
        object_map = ds_map_find_value(level, ds_list_find_value(xobject_list, j));
        object_x = ds_list_find_value(xposition_list, j);
        object_y = ds_list_find_value(yposition_list, j);
    
        
        if ( current_type == "zero" ){
                
            instance_create( object_x , object_y, ds_map_find_value( object_map, "object"));
            ds_list_replace(depth_pointer_list, i, j+1);
        } 
        else if ( current_type == "timed" ){
            
            instance_create( room_width - ( room_width *(total_distance/level_length)), object_y, ds_map_find_value( object_map, "object"));
            ds_list_replace(depth_pointer_list, i, j+1);            
        } 
        else if ( current_type == "fog" ){
            
            instance_create( - ((sprite_get_width(ds_map_find_value(object_map, "sprite" ))-room_width) * (total_distance/level_length)), object_y, ds_map_find_value( object_map, "object")); 
            ds_list_replace(depth_pointer_list, i, j+1);
        } 
        else if ( current_type == "set" ){
            
            instance_create((object_x - start_distance) , object_y, ds_map_find_value( object_map, "object"));  
            ds_list_replace(depth_pointer_list, i, j+1);
        } 
        // spawn all objects between start and end of map.
        else if( object_x >= start_distance and object_x <= final_distance ){
            instance_create( object_x - start_distance , object_y, ds_map_find_value( object_map, "object"));  
            ds_list_replace(depth_pointer_list, i, j+1);
        } 
        
    }
    
    show_debug_message("");
    show_debug_message("Depth: " + current_depth );
    show_debug_message("Depth length: " + string(current_depth_length));
    scr_print_all_objects(xposition_list, xobject_list);
    show_debug_message(string(total_distance));
    show_debug_message(string(level_length));
}

//for( var i=0, i<ds_list_size(depth_pointer_list), i++){
//    show_debug_message(string(ds_list_find_value(depth_pointer_list, i);
//}
