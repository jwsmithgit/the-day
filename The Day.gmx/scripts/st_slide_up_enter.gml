if ( state_time == 0 ){

    desired_y = y;
    y = room_height + sprite_yoffset; 
    distance_y =  desired_y - y;
    
    // time is dependant on the move speed in relation to player move speed and the x position for which it spawns
    
    current_xmove = ds_map_find_value( map, "x_move" );
    current_depth_length = obj_game_master.level_length / obj_game_master.player_speed * current_xmove;
    depth_length_ratio = current_depth_length / obj_game_master.level_length;
    
    if( obj_game_master.level_distance == 0 ){
        time = (((room_speed*4)*sqr((x+(sprite_width/2))/room_width)) + (room_speed*3));
    } else {
        time = (room_speed * 5) / depth_length_ratio;
    }
        
    velocity = (distance_y/time); // -
    final_velocity = 0; 
    initial_velocity = velocity*2; // -
    acceleration_y = (final_velocity-initial_velocity)/time; // +  
    speed_y = initial_velocity;                              
    
    /*
    show_debug_message("distance_y" + ": " + string(distance_y));
    show_debug_message(string(velocity));
    show_debug_message(string(speed_y));
    show_debug_message(string(acceleration_y));*/
}

else {
if ( y > desired_y /*and obj_player.current_state = "st_walk_right"*/){ 
    y += speed_y;
    speed_y += acceleration_y;
}
if ( y <= desired_y){
    y = desired_y;
    next_state = "st_neutral";
}
}

