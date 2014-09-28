var list, map, size;

list = argument0; // list of map names
map = argument1; // map to copy to

size = ds_list_size(list); // how many maps to make
for ( var i=0; i<size; i++){ // adding a list of maps to add to desired map.
    ds_map_add( map, ds_list_find_value(list, i), ds_map_create());
}

// add each map name to iterable non_sorted list
// if a list already exits for that map, add objects to that map
if ( ds_map_exists( map, "list" )){
    // list to add to
    existing_list = ds_map_find_value( map, "list" );
    // add every map name to existing list
    for ( var i=0; i<size; i++){ 
        ds_list_add(existing_list,ds_list_find_value(list, i))
    }
    // replace list
    ds_map_replace ( map, "list", existing_list );
}   
else{
    ds_map_add ( map, "list", list ); // list of everything in map, for iteration.
}

return map;
