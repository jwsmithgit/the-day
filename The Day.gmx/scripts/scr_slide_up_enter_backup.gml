if ( state_time == 0 ){

    desired_y = y;
    y = room_height + sprite_height + 2*(x+(sprite_width/2)); 
    distance_y = desired_y - y;
    
    // time is dependant on the move speed in relation to player move speed and the x position for which it spawns
    
    time = (room_speed*6);
    /*
    time = (room_speed*10) * (2/ x_move) * (((x+(sprite_width/2))/room_width)*.25 + .75);
    if ( x_move > 0 ){
        time = (room_speed*10) * (2/ x_move) * (((x+(sprite_width/2))/room_width)*.75 + .25);
    } else {
        time = (room_speed*10);
    }*/
        
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

if ( y > desired_y /*and obj_player.current_state = "st_walk_right"*/){ 
    y += speed_y;
    speed_y += acceleration_y;
}
if ( y == desired_y){
    next_state = "st_neutral";
}


