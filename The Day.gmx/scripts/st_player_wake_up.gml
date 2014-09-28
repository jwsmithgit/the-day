if ( state_time == 0 ){

    sprite_index = spr_player_wake_up;
    image_index = 0;
}

// ends after sprite play through
if ( image_index+1 == image_number ){
    x_change = -2;
    y_change = +5;
    next_state = "st_get_up";
}
