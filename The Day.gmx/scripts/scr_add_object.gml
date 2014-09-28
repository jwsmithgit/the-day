var current_object_name = argument0;
ds_list_add(object_list, current_object_name);
ds_map_add(current_level, current_object_name, ds_map_create());
return ds_map_find_value(current_level, current_object_name);
