/* goes through all levels in database and sort set items
    should popoulate depth xposition lists and xobject lists
*/

var level, type_list, current_type, current_type_objects, current_depth, current_xposition_list, current_xobject_list, current_object, object_map, x_position, x_offset;

// get level map
level = argument0;

// list of all the depth types
type_list = ds_map_find_value( level, "depth_list" );

// for each type in type list
for ( var i = 0; i < ds_list_size(type_list); i++ ){

    current_type = ds_list_find_value( type_list, i );
    current_type_objects = ds_map_find_value( level, current_type );
    
    current_depth = string_copy( current_type, string_length("depth_")+1, 2);

    current_xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
    current_xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    
    // for each object in that list check types, checking for "set" items
    for ( var j = 0; j < ds_list_size(current_type_objects); j++ ){
        
        current_object = ds_list_find_value(current_type_objects, j); // current object name
        object_map = ds_map_find_value(level, current_object); // current object map
        
        if ( ds_map_find_value( object_map, "type" ) == "set" ){
            
            x_position = ds_map_find_value(object_map, "x_position"); 
            
            // if a x offset exists in object map, offset xposition
            if (ds_map_exists(object_map, "x_offset") == true){ 
                // new y position is x position plus random number between 0 and x offset
                x_offset = random(ds_map_find_value(object_map, "x_offset"));
                x_position += x_offset;
            } 
            
            scr_insert_into_list( current_object, x_position, current_xposition_list, current_xobject_list );
            // Will offset y position in later script
            // if a y offset exists in object map
            /*if (ds_map_exists(object_map, "y_offset") == true){
                // new y position is y position plus random number between 0 and y offset
                y_position = ds_map_find_value(object_map, "y_position"); 
                y_offset = random(ds_map_find_value(object_map, "y_offset"));
                ds_map_replace(object_map, "y_position", y_position+y_offset);
            }*/
        }
    }
}

/*types_list = ds_map_find_value( level, "type_list" );
ds_list_delete( types_list, ds_list_find_index( types_list, "set" ));
ds_map_replace( level, "type_list", types_list ); */

// debug, for each type in type list
/*for ( var i = 0; i<ds_list_size(type_list); i++){
    current_type = ds_list_find_value( type_list, i );
    current_type_objects = ds_map_find_value( level, current_type );
    
    current_depth = string_copy( current_type, string_length("depth_")+1, 2);
    current_xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
    current_xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    show_debug_message(current_type + ": ");
    show_debug_message("objects: ");
    for ( var j = 0; j < ds_list_size(current_type_objects); j++ ){
        show_debug_message( ds_list_find_value(current_type_objects, j));
    }
    show_debug_message("xpositions: ");
    for ( var j = 0; j<ds_list_size(current_xposition_list); j++){
        show_debug_message( string( ds_list_find_value(current_xposition_list, j)));
    }
    show_debug_message("xobjects: ");
    for ( var j = 0; j<ds_list_size(current_xobject_list); j++){
        show_debug_message( ds_list_find_value(current_xobject_list, j));
    }
}*/

return level;

