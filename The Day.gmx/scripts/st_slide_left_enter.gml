// does not work correctly
if ( state_time == 0 ){
    left_speed = 0;//15;
    x = room_width + sprite_xoffset;
    x_destination = 0;
    
    max_speed = 12;
    acceleration = .5;
    deceleration = .5;
}
else {
    // update speed
    // increase speed if walking, decrease otherwise
    if ( obj_player.current_state == "st_walk_right"){
    
        if ( left_speed <= max_speed-acceleration ){ left_speed += acceleration; }
        else if ( max_speed-acceleration < left_speed and left_speed < max_speed ){ left_speed = max_speed }
        
        // reverse effects of normal x_move
        if ( obj_player.half_way == true ){ x += x_move; }
    } else {
    
        if (left_speed >= deceleration ){ left_speed-= deceleration; }
        else { left_speed = 0 }
    }
    
    // move object
    if (x - left_speed > x_destination ) {
        x -= left_speed; 
    } else {
        x = x_destination; 
        next_state = "st_neutral";
    }
} 

