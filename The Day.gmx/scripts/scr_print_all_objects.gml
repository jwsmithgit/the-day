xposition_list = argument0;
xobject_list = argument1;

show_debug_message( string( ds_list_size( xposition_list )));
show_debug_message( "xpositions: ");
for ( var i = 0; i < ds_list_size( xposition_list ); i++){
    show_debug_message( string(ds_list_find_value( xposition_list, i )));
}
show_debug_message( "xobjects: ");
for ( var i = 0; i < ds_list_size( xobject_list ); i++){
    show_debug_message( ds_list_find_value( xobject_list, i ));
}
