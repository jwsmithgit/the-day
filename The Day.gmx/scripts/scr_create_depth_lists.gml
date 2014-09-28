 /* DONE
 give a level map as an argument
map must have objects with depths, this will make lists for each depth
map must have list of object with key "list"
*/

// set up variables, (local)  
var level, depth_list, depth_pointer_list, object_list;
level = argument0; // level map as argument
level_length = ds_map_find_value( level, "level_length" );

// grab the object list from level
object_list = ds_map_find_value(level, "list");
// list to hold all depth levels
depth_list = ds_list_create();
// list to hold pointers for each depth
depth_pointer_list = ds_list_create();
// list to hold speed of each depth
depth_speed_list = ds_list_create();
// list to hold ratio of each depth
depth_ratio_list = ds_list_create();
// list to hold distance of each depth
depth_distance_list = ds_list_create();
// list to hold length of each depth
depth_length_list = ds_list_create();

// go through every item in object list
for (var i = 0; i < ds_list_size(object_list); i++){

    var current_object, current_object_depth, current_object_list;
    // get object name from list
    current_object = ds_list_find_value( object_list, i);
    
    // get object depth from level map
    current_object_depth = string( ds_map_find_value( ds_map_find_value( level, current_object ), "depth"));
    current_object_list = "depth_" + current_object_depth;
    
    // check if list exists for that depth
    if (ds_map_find_value( level, current_object_list ) == 0){
        
        // no list for that depth, so we make one
        ds_map_add(level, current_object_list, ds_list_create());
        
        // add list to map for xpositions and xobjects for depths that dont have them
        ds_map_add(level, "xposition_" + current_object_depth, ds_list_create());
        ds_map_add(level, "xobject_" + current_object_depth, ds_list_create());
        ds_list_add(depth_list, current_object_list);
        ds_list_add(depth_pointer_list, 0);
        
        ds_list_add(depth_speed_list, scr_set_speed_by_depth(real(current_object_depth)));
        ds_list_add(depth_ratio_list, ds_list_find_value( depth_speed_list, ds_list_size(depth_speed_list)-1) / player_speed );
        ds_list_add(depth_distance_list, level_length * ds_list_find_value( depth_ratio_list, ds_list_size(depth_ratio_list)-1));
        ds_list_add(depth_length_list, room_width + ds_list_find_value( depth_distance_list, ds_list_size(depth_distance_list)-1 ));
        
    }
    
    // add object to that list
    ds_list_add( ds_map_find_value( level, current_object_list ), current_object );
}

// add depth list to map
ds_map_add( level, "depth_list", depth_list );
ds_map_add( level, "depth_pointer_list", depth_pointer_list);
ds_map_add( level, "depth_speed_list", depth_speed_list);
ds_map_add( level, "depth_ratio_list", depth_ratio_list);
ds_map_add( level, "depth_distance_list", depth_distance_list);
ds_map_add( level, "depth_length_list", depth_length_list);


/*for ( var j = 0; j<ds_list_size(depth_list); j++){
    show_debug_message(string(j) + ": " + string(ds_list_find_value(depth_ratio_list, j)));
}*/
// debug, check all depths
/*show_debug_message( ds_map_find_value( level, "level_name" ));
for ( var j = 0; j<ds_list_size(depth_list); j++){
    show_debug_message(string(j) + ": " + ds_list_find_value(depth_list, j));
}*/
