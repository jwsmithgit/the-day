/* goes through all the objects in sorted list, chooses gates
for each object in the given sorted list
will add a gate to another list that corresponds 1-1
if no gate for that object store null in list
*/

var level, xposition_list, xobject_list, level_gates, current_object, object_map, current_gates, current_chance, chance, random_num;

// get level map
level = argument0;

// list of all depths, minus set list, depths expected are random_(depth)
depth_list = ds_map_find_value( level, "depth_list" );// create new x_position list to store all objects in that depth

// for each depth
for ( var i = 0 ; i< ds_list_size(depth_list); i++ ){

    current_depth_string = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth_string );
    current_depth = string_copy( current_depth_string, string_length("depth_")+1, 10);
    xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    
    xgate_list = ds_list_create();
    
    for (var j = 0; j < ds_list_size(xobject_list); j++){
    
        // get the x_position of next object
        current_object = ds_list_find_value(xobject_list, j); // current object
        object_map = ds_map_find_value(level, current_object); // current object map
    
        // if gates exist for that object
        if ( ds_map_exists( object_map, "gates_list" ) != 0 ){
            current_gates = ds_map_find_value(object_map, "gates_list");
            current_chance = ds_map_find_value(object_map, "gates_chance");
            
            total_chance = 0;
            var k;
            for( k=0; k<ds_list_size(current_chance); k++){
                total_chance += ds_list_find_value(current_chance, k);
            } 
            
            random_num = random(total_chance); // 1-100 // gate chosen is 
            for( k=0; k< ds_list_size(current_chance); k++){
                if( random_num < ds_list_find_value(current_chance, k) ){   
                    ds_list_add(xgate_list, ds_list_find_value(current_gates, k));
                    break;
                }
                random_num -= ds_list_find_value(current_chance, k);
            }
            
        } else {
            // no gates at all for this object
            ds_list_add(xgate_list, "none" ); 
        }
    }
    
    ds_map_add(level, "xgate_"+current_depth, xgate_list);
}

// debug, for each gate in depths list
/*for ( var i = 0; i<ds_list_size(depth_list); i++){
    current_depth = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth );
    
    current_depth = string_copy( current_depth, string_length("depth_")+1, 10);
    current_xgate_list = ds_map_find_value( level, "xgate_"+current_depth);
    show_debug_message( "GATES" + current_depth + ": ");
    for ( var j = 0; j < ds_list_size(current_xgate_list); j++ ){
        show_debug_message( ds_list_find_value(current_xgate_list, j));
    }
}*/

return level;
