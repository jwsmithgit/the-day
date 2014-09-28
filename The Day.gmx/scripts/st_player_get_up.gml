if ( state_time == 0 ){

    sprite_index = spr_player_get_up;
    image_index = 0;
}

if ( image_index+1 == image_number ){
    x_change = 80;
    y_change = -52;
    next_state = "st_stand";
}

