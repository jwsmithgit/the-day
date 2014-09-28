var object_map, current_gates, current_chance, chance, random_num;

object_map = argument0; // current object map

if ( ds_map_exists( object_map, "gates_list" ) != 0 ){
    current_gates = ds_map_find_value(object_map, "gates_list");
    current_chance = ds_map_find_value(object_map, "gates_chance");
    var i = 0; // counts through gates in list
    chance = ds_list_find_value(current_chance, i); // gate chance
    random_num = ceil(random(100)); // 1-100
    while ( random_num > chance ){
        random_num = random_num - chance;
        i++;
        // if i(counter) is more than size of list, no gate is chosen
        if ( i >= ds_list_size(current_chance)){
            ds_list_add(level_gates, "none" ); // no gate for object with gates
            break;
        }
        chance = ds_list_find_value(current_chance, i); // next gate chance
    }
    // if i(counter is less than size of list at this point, gate is chosen
    if ( i < ds_list_size(current_chance)){
        return ds_list_find_value(current_gates, i);
    }
} else {
    // no gates at all for this object
    return "none"; 
}
