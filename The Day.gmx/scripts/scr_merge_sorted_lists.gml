// given map of level, finds all depth lists and merges them together based on x_position in map.
var level;

level = argument0;

// list of all the depths
depth_list = ds_map_find_value( level, "depth_list" );

/*for ( var i = 0; i < ds_list_size( depth_list ); i++){
    show_debug_message( string(ds_list_find_value( depth_list, i )));
}*/

xposition_final = ds_list_create();
xobject_final = ds_list_create();
ds_map_add(level, "xposition_final", xposition_final );
ds_map_add(level, "xobject_final", xobject_final );

// for each depth in depth list
for ( var i = 0; i < ds_list_size(depth_list); i++ ){

    current_depth_string = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth_string );
    current_depth = string_copy( current_depth_string, string_length("depth_")+1, 2);
    
    //show_debug_message("current_depth " +current_depth + " size: " +string(ds_list_size(current_depth_objects)));
    
    /*show_debug_message("objects in list:");
    for ( var j = 0; j<ds_list_size(current_depth_objects); j++){
        show_debug_message(ds_list_find_value(current_depth_objects, j));
    }*/
    current_type = ds_map_find_value(ds_map_find_value(level, ds_list_find_value(current_depth_objects, 0)), "type");
    //show_debug_message( "current type: " + current_type);
    if ( current_type != "zero" and current_type != "timed" and current_type != "fog" ){
    
        current_xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
        current_xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
        
        if ( i == 0 ){
            ds_list_copy(xposition_final, current_xposition_list);
            ds_list_copy(xobject_final, current_xobject_list);
        } else {
        //show_debug_message(string(ds_list_size(current_xposition_list)));
            for ( var j = 0; j < ds_list_size(current_xposition_list); j++){
                current_object = ds_list_find_value(current_xobject_list, j);
                
                //show_debug_message(current_object);
                current_xposition = ds_list_find_value(current_xposition_list, j);
                scr_insert_into_list( current_object, current_xposition, xposition_final, xobject_final );
            }
        }
    }

    /*show_debug_message( "FINAL MERGING: " + ds_map_find_value(level, "level_name") );
    show_debug_message( "xpositions: ");
    for ( var j = 0; j < ds_list_size( xposition_final ); j++){
        show_debug_message( string(ds_list_find_value( xposition_final, j )));
    }
    show_debug_message( "xobjects: ");
    for ( var j = 0; j < ds_list_size( xobject_final ); j++){
        show_debug_message( ds_list_find_value( xobject_final, j ));
    }*/
}

/*show_debug_message( ds_map_find_value(level, "level_name") );
show_debug_message( "xpositions: ");
for ( var i = 0; i < ds_list_size( xposition_final ); i++){
    show_debug_message( string(ds_list_find_value( xposition_final, i )));
}
show_debug_message( "xobjects: ");
for ( var i = 0; i < ds_list_size( xobject_final ); i++){
    show_debug_message( ds_list_find_value( xobject_final, i ));
}*/
