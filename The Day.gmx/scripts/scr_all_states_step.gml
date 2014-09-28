if ( obj_player.current_state == "st_walk_right" and obj_game_master.scrolling_level == true and obj_player.half_way == true and obj_game_master.total_distance < ds_map_find_value(obj_game_master.current_level, "level_length")){

    x -= x_move;
}
else if ( obj_player.current_state == "st_stand" ){

    x -= ds_map_find_value(map, "x_drift");
}
