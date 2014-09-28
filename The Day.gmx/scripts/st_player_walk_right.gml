if ( state_time == 0 ){

    sprite_index = spr_player_walk_right;
    image_speed = .5;
}


if ( x <= room_width/2 - walk_right_speed/2 or x > room_width/2 + walk_right_speed/2){
    half_way = false;
} else { 
    half_way = true;
}

if ( x < room_width/2 - walk_right_speed/2 or obj_game_master.scrolling_level == false or obj_game_master.total_distance >= ds_map_find_value(obj_game_master.current_level, "level_length")) {
    x += walk_right_speed;
}

//audio_listener_position(x, y, 0);
//audio_listener_velocity(walk_right_speed, 0, 0);
x_position += walk_right_speed;
