var level, level_length, depth_list, level_priority_number;

level = argument0;
level_length = ds_map_find_value( level, "level_length" );

// list of all depths, minus set list, depths expected are random_(depth)
depth_list = ds_map_find_value( level, "depth_list" );// create new x_position list to store all objects in that depth
depth_length_list = ds_map_find_value ( level, "depth_length_list" );

// for each depth we create a xposition list
for ( var i = 0 ; i< ds_list_size(depth_list); i++ ){
    
    var current_depth_string, current_depth, current_depth_objects, current_depth_length, current_type, current_xposition_list, current_xobject_list;
    // depth name: depth_#
    current_depth_string = ds_list_find_value( depth_list, i );
    // depth number string: # (no "depth_")
    current_depth = string_copy( current_depth_string, string_length("depth_")+1, 10);
    // depth object list, has every object in that depth
    current_depth_objects = ds_map_find_value( level, current_depth_string );
    // how long the current depth is, with extra room width
    current_depth_length = ds_list_find_value( depth_length_list, i );
    
    
    // object type of current depth
    current_type = ds_map_find_value( ds_map_find_value( level, ds_list_find_value( current_depth_objects, 0 )), "type" );
    // check for multiple objects of the same depth, crash if there is
    for ( var j = 0; j<ds_list_size(current_depth_objects); j++){
        if ( ds_map_find_value( ds_map_find_value( level, ds_list_find_value( current_depth_objects, j )), "type" ) != current_type){
            show_error( "Two different type objects are in the same depth in level " + ds_map_find_value(level, "level_name" ) + " at depth level " + current_depth + " with types " + ds_map_find_value( ds_map_find_value( level, ds_list_find_value( current_depth_objects, j )), "type" ) + " in type " + current_type + " at position " + string(j), 1 );
        }
    }
    
    // xpositions for depth, to be filled
    current_xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
    // objects that correspond to xposition list, to be filled
    current_xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    
    
    // spread type spawn
    if ( current_type == "spread" ){
    
        // pick random object from that depth to find out how many to spawn
        random_object_name = ds_list_find_value( current_depth_objects, floor(random(ds_list_size(current_depth_objects))) );
        random_object_map = ds_map_find_value( level, random_object_name ); // random objects map
        random_object_sprite_width = sprite_get_width( ds_map_find_value( random_object_map, "sprite" ));
        // attribute of spread item, how many to spread throughout level
        number = ds_map_find_value( random_object_map, "number" );
        
        // spread each object throughout level
        for( var k = 0; k < number; k++ ){
            current_xposition = (k * (current_depth_length/number)) + random( (current_depth_length/number) - random_object_sprite_width);
            // pick random object in this depth level
            current_object_name = ds_list_find_value( current_depth_objects, floor(random(ds_list_size( current_depth_objects ))) ); // current object name
            // insert into xposition list
            scr_insert_into_list(current_object_name, current_xposition, current_xposition_list, current_xobject_list );  
        }
    }
    
    
    // interval type spawn
    else if ( current_type == "interval" ){
    
        // pick random object to grab interval attributes from
        random_object_name = ds_list_find_value(current_depth_objects, floor(random(ds_list_size(current_depth_objects)))); // first object's name
        random_object_map = ds_map_find_value(level, random_object_name); // first objects map
        min_interval = ds_map_find_value( random_object_map, "min_interval" );
        max_interval = ds_map_find_value( random_object_map, "max_interval" );
        
        current_xposition = 0;
        
        not_first_pass = 0; // skip object insert on first pass to avoid 0;
        while( current_xposition < current_depth_length ){
            if( not_first_pass ){
                current_object_name = ds_list_find_value( current_depth_objects, floor(random(ds_list_size( current_depth_objects )))); // current object name
                scr_insert_into_list(current_object_name, current_xposition, current_xposition_list, current_xobject_list );
            }
            
            current_xposition += random( max_interval - min_interval ) + min_interval;
            not_first_pass = 1;
        }
    }
    
    
    // nature type spawn
    else if ( current_type == "nature" ){
    
        // pick random object to grab nature attributes from
        random_object_name = ds_list_find_value(current_depth_objects, floor(random(ds_list_size(current_depth_objects)))); // first object's name
        random_object_map = ds_map_find_value(level, random_object_name); // first objects map
        min_sparse_interval = ds_map_find_value( random_object_map, "min_sparse_interval" );
        max_sparse_interval = ds_map_find_value( random_object_map, "max_sparse_interval" );
        min_dense_interval = ds_map_find_value( random_object_map, "min_dense_interval" );
        max_dense_interval = ds_map_find_value( random_object_map, "max_dense_interval" );
        
        current_xposition = 0;
        dense_sparse = choose(0,1);
        not_first_pass = 0; // skip object insert on first pass to avoid 0;
        while ( current_xposition < current_depth_length ){  
            
            if( not_first_pass ){
                // insert into list
                current_object_name = ds_list_find_value(current_depth_objects, floor(random(ds_list_size(current_depth_objects)))); // current object name
                scr_insert_into_list(current_object_name, current_xposition, current_xposition_list, current_xobject_list );
            }
            
            if (dense_sparse == 0 ){ //dense
                // number to add next time
                current_interval = random( max_dense_interval - min_dense_interval ) + min_dense_interval;
                if ( current_interval > (max_dense_interval - min_dense_interval)*3/5 ){
                    if( choose(0,1,2) = 0 ){
                        dense_sparse = 1;
                    }
                }
            }
            else if (dense_sparse == 1 ){ //sparse
                // number to add next time
                current_interval = random( max_sparse_interval - min_sparse_interval ) + min_sparse_interval;
                // chance to change to dense
                if( choose(0,1,2) = 0 ){
                    dense_sparse = 0;
                }
            }
            
            current_xposition += current_interval;
            // second pass for to add object to list
            not_first_pass = 1;
        }
    }
   
     
    // civil spawn
    else if ( current_type == "civil" ){
    
        // random object to get civil attributes from
        random_object_name = ds_list_find_value(current_depth_objects, floor(random(ds_list_size(current_depth_objects)))); // first object's name
        random_object_map = ds_map_find_value(level, first_object_name); // first objects map
        civil_interval = ds_map_find_value( random_object_map, "civil_interval" );
        min_interval = ds_map_find_value( random_object_map, "min_interval" );
        max_interval = ds_map_find_value( random_object_map, "max_interval" );
        
        current_xposition = 0;
        dense_sparse = choose(0,1);
        not_first_pass = 0; // skip adding object (x=0) on first pass
        while ( current_xposition < current_depth_length ){  
            
            if (not_fisrt_pass){
            // insert into list
                current_object_name = ds_list_find_value(current_depth_objects, floor(random(ds_list_size(current_depth_objects)))); // current object name
                scr_insert_into_list(current_object_name, current_xposition, current_xposition_list, current_xobject_list );
            }
            
            if (dense_sparse == 0 ){ //dense
                // number to add next time
                current_interval = civil_interval;
                // chance to change to sparse
                if( choose(0,1,2,4) = 0 ){
                    dense_sparse = 1;
                }
            }
            else if (dense_sparse == 1 ){ //sparse
                // number to add next time
                current_interval = random( max_interval - min_interval ) + min_interval;
                // chance to change to dense
                if( choose(0,1,3) = 0 ){
                    dense_sparse = 0;
                }
            }
            
            current_xposition += current_interval;
            not_first_pass = 1;
        }
    }

    
    // set type spawn
    else if ( current_type == "set" ){
        for ( var j = 0; j< ds_list_size(current_depth_objects); j++ ){
            current_object_name = ds_list_find_value(current_depth_objects, j);
            current_object_map = ds_map_find_value(level, current_object_name);
            
            x_position = ds_map_find_value(current_object_map, "x_position"); 
            
            // if a x offset exists in object map, offset xposition
            if (ds_map_exists(current_object_map, "x_offset")){ 
                x_offset = random(ds_map_find_value(current_object_map, "x_offset"));
                x_position += x_offset;
            } 
            
            scr_insert_into_list( current_object_name, x_position, current_xposition_list, current_xobject_list );
        }
    }
    
    
    // zero always spawn likes the travelled distance is zero when changing to level
    else if ( current_type == "zero" ){
        for ( var j = 0; j< ds_list_size(current_depth_objects); j++ ){
            current_object_name = ds_list_find_value(current_depth_objects, j);
            current_object_map = ds_map_find_value(level, current_object_name);
            
            x_position = ds_map_find_value(current_object_map, "x_position"); 
            
            // if a x offset exists in object map, offset xposition
            if (ds_map_exists(current_object_map, "x_offset")){ 
                x_offset = random(ds_map_find_value(current_object_map, "x_offset"));
                x_position += x_offset;
            } 
            
            scr_insert_into_list( current_object_name, x_position, current_xposition_list, current_xobject_list );
            
        }
    } 
    
    
    else if ( current_type == "timed" ){
    
        current_object_name = ds_list_find_value(current_depth_objects, 0);
        current_object_map = ds_map_find_value(level, current_object_name);
        x_position = ds_map_find_value(current_object_map, "x_position"); 
        
        scr_insert_into_list( current_object_name, x_position, current_xposition_list, current_xobject_list );
        
    } 
    
    else if ( current_type == "fog" ){
    
        current_object_name = ds_list_find_value(current_depth_objects, 0);
        current_object_map = ds_map_find_value(level, current_object_name);
        x_position = ds_map_find_value(current_object_map, "x_position"); 
        
        // if a x offset exists in object map, offset xposition
        if (ds_map_exists(current_object_map, "x_offset") == true){ 
            x_offset = random(ds_map_find_value(current_object_map, "x_offset"));
            x_position += x_offset;
        } 
        
        scr_insert_into_list( current_object_name, x_position, current_xposition_list, current_xobject_list );
    }
} 

// debug, for each depth in depth list
/*for ( var i = 0; i<ds_list_size(depth_list); i++){
    current_depth = ds_list_find_value( depth_list, i );
    current_depth_objects = ds_map_find_value( level, current_depth );
    
    current_depth = string_copy( current_depth, string_length("depth_")+1, 10);
    current_xposition_list = ds_map_find_value( level, "xposition_"+current_depth);
    current_xobject_list = ds_map_find_value( level, "xobject_"+current_depth);
    show_debug_message( "RANDOMIZE" + current_depth + ": ");
    show_debug_message("length: " + string(level_length));
    current_xmove = ds_map_find_value( ds_map_find_value( level, ds_list_find_value( current_depth_objects, 0 )), "x_move" );
    current_depth_length = level_length / player_speed * current_xmove;
    depth_length_ratio = current_depth_length / level_length;
    show_debug_message(string(current_depth_length));
    for ( var j = 0; j < ds_list_size(current_depth_objects); j++ ){
        show_debug_message( ds_list_find_value(current_depth_objects, j));
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
