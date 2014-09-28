/* goes through all the objects in sorted list, chooses ypositions
for each object in the given sorted list
will add a yposition to another list that corresponds 1-1
if no yposition chance for that object store 0 in list
*/

var level, xposition_list, xobject_list, level_ypositions, current_object, object_map, current_yposition, current_yoffset, random_num;

// get level map
level = argument0;

// list of all depths, minus set list, depths expected are random_(depth)
depth_list = ds_map_find_value( level, "depth_list" );// create new x_position list to store all objects in that depth

// go through for every depth
for ( var i = 0 ; i< ds_list_size(depth_list); i++ ){

    current_depth_string = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth_string );
    current_depth = string_copy( current_depth_string, string_length("depth_")+1, 10);
    xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    
    yposition_list = ds_list_create(); // holds null value for no gate and gate level name for gate

    // for each object in the xposition list
    for (var j = 0; j < ds_list_size(xobject_list); j++)
    {
        // get the y_position of next object
        current_object = ds_list_find_value(xobject_list, j); // current object
        object_map = ds_map_find_value(level, current_object); // current object map
    
        current_yposition = ds_map_find_value(object_map, "y_position");

        if ( ds_map_exists( object_map, "y_offset" ) != 0 ){
            current_yoffset = ds_map_find_value(object_map, "y_offset");
            random_num = floor(random(current_yoffset));
            
            current_yposition += random_num; 
        } 
        
        ds_list_add(yposition_list, current_yposition ); 
    }
    
    ds_map_add(level, "yposition_"+current_depth, yposition_list);
}

// debug, for each gate in depths list
/*for ( var i = 0; i<ds_list_size(depth_list); i++){
    current_depth = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth );
    
    current_depth = string_copy( current_depth, string_length("depth_")+1, 10);
    current_yposition_list = ds_map_find_value( level, "yposition_"+current_depth);
    show_debug_message( "YPOSITITIONS" + current_depth + ": ");
    for ( var j = 0; j < ds_list_size(current_yposition_list); j++ ){
        show_debug_message( string(ds_list_find_value(current_yposition_list, j)));
    }
}*/

return level;
