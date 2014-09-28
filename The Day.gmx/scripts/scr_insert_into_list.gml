// inserts object into list
// will need sprite widths later
var current_object, current_xposition, list_xposition, list_objects;
current_object = argument0;
current_xposition = argument1;
list_xposition = argument2;
list_objects = argument3;

/*show_debug_message("objects as insert: ");
show_debug_message( "object: " + current_object);*/
//show_debug_message("insertion: " + string(current_object) + " " + string(current_xposition) + " - " + string(ds_list_size( list_xposition )));

// list is empty, place object list
if ( ds_list_size(list_xposition) == 0 ){
    ds_list_add( list_xposition, current_xposition );
    ds_list_add( list_objects, current_object );
}
// object at start of list
else if ( current_xposition < ds_list_find_value( list_xposition, 0 )){
    ds_list_insert( list_xposition, 0, current_xposition );
    ds_list_insert( list_objects, 0, current_object );
}
// object is at end of list
else if ( current_xposition >= ds_list_find_value( list_xposition, ds_list_size( list_xposition )-1 )){
    ds_list_add( list_xposition, current_xposition );
    ds_list_add( list_objects, current_object );
}
// object is in middle of list
else {
    // binary insert
    imin = 0;
    imax = ds_list_size( list_xposition)-1;
    while ( imax >= imax ){
        imid = imin + floor((imax-imin)/2);
        
        if ((current_xposition >= ds_list_find_value( list_xposition, imid )) and (current_xposition < ds_list_find_value( list_xposition, imid+1 ))){
            ds_list_insert( list_xposition, imid+1, current_xposition );
            ds_list_insert( list_objects, imid+1, current_object );
            break;
        }
        else if( current_xposition >= ds_list_find_value( list_xposition, imid+1 )){
           imin = imid+1;
        } else {
           imax = imid;
        }
    }
    
}

// debug messaging
/*show_debug_message( string( ds_list_size( list_xposition )));
show_debug_message( "xpositions: ");
for ( var i = 0; i < ds_list_size( list_xposition ); i++){
    show_debug_message( string(ds_list_find_value( list_xposition, i )));
}
show_debug_message( "xobjects: ");
for ( var i = 0; i < ds_list_size( list_objects ); i++){
    show_debug_message( ds_list_find_value( list_objects, i ));
}*/
