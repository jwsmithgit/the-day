/*
copy and place

current_object = scr_add_object("[name]");
ds_map_add(current_object, "type", "[random, set]" );
ds_map_add(current_object, "chance", [0-1,1-9] );
ds_map_add(current_object, "sprite", [sprite name] );
ds_map_add(current_object, "object", [object name] );
ds_map_add(current_object, "depth", [number, player is on 0, <0 is in front, >0 is behind );
ds_map_add(current_object, "x_position", [ x position on map, 0 is top of screen, last is length of level ]);
ds_map_add(current_object, "y_position", [ y position, 0 is top of screen, room_height(720) is bottom of screen ] );
ds_map_add(current_object, "y_offset", [ number, how much offset the y can have ]);
ds_map_add(current_object, "x_move", [ number, how fast object moves when walking ] );
ds_map_add(current_object, "x_drift", [ number, how fast the object moves when walking ] );
ds_map_add(current_object, "st_enter", [ reference to script for entering ] );
ds_map_add(current_object, "st_exit", [ reference to script for entering ]);

// gates
var gates_list = ds_list_create();
ds_list_add(gates_list, "[name of level]");
ds_map_add(current_object, "gates_list", gates_list);
var gates_chance = ds_list_create();
ds_list_add(gates_chance, [ number out of 100, chance to gate to other level ]] );
ds_map_add(current_object, "gates_chance", gates_chance);
// chosen gate goes into "gate"
ds_map_add(current_object, "gate_type", "[wait or touch: wait activates after standing in front, touch activates on touch ]");
*/

