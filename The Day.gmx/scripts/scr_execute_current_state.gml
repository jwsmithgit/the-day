// switch statement for parent object
switch(current_state)
{
    case "st_neutral": 
        st_neutral();
        break;
    case "st_enter": 
        if (ds_map_exists(map, "st_enter") != 0){
            script_execute(ds_map_find_value(map, "st_enter"));
        } else {
            st_enter();
        }
        break;
    case "st_exit": 
    if (ds_map_exists(map, "st_exit") != 0){
            script_execute(ds_map_find_value(map, "st_exit"));
        } else {
            st_exit();
        }
        break;
}
