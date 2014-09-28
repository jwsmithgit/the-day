if ( state_time == 0 ){
    move_left = 0;//15;
    max_speed = 12;
    acceleration = .5;
    deceleration = .5;
}

if ( obj_player.current_state == "st_walk_right" ){
    
    if (move_left <= max_speed-acceleration ){ move_left+= acceleration; }
    else if ( max_speed-acceleration < move_left and move_left < max_speed ){ move_left = max_speed }
    }
    else if ( move_left > 0 ) {
        if (move_left >= deceleration ){ move_left-= deceleration; }
        else if ( 0 < move_left and move_left <deceleration ){ move_left = 0 }
    } else if ( move_left < 0 ) {
        if (move_left <= -deceleration ){ move_left+= deceleration; }
        else if ( 0 > move_left and move_left > -deceleration ){ move_left = 0 }
}

x -= move_left;

