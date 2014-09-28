/* goes through all levels in database and sort set items
    Done.
*/

var i, level, type_list, current_object, value_to_insert, hole_pos;

// get level map
level = argument0;

// grab the type list only set list for now
type_list = ds_map_find_value(level, "set");

// for the type list, sort it. Insertion Sort wikipedia
for (i = 1; i < ds_list_size(type_list); i++)
{
    // get the x_position of next object
    current_object = ds_list_find_value(type_list, i); // current object
    value_to_insert = ds_map_find_value( ds_map_find_value( level, current_object ), "x_position"); // current objects x_position (sorting value)
    hole_pos = i; // hole position
    
    // while hole is not on first element and value of object is still less than the one before it
    while ( hole_pos > 0 and value_to_insert < ds_map_find_value( ds_map_find_value( level, ds_list_find_value(type_list, hole_pos-1)), "x_position"))
    {
        ds_list_replace( type_list, hole_pos, ds_list_find_value(type_list, hole_pos-1 ));
        hole_pos = hole_pos - 1;
    }
    ds_list_replace( type_list, hole_pos, current_object );
    
}
return level;
