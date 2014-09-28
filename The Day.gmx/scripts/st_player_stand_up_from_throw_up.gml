if ( state_time == 0 ){

    sprite_index = spr_player_stand_up_from_throw_up;
}


if ( image_index+1 == image_number ){
    x_change = -64;
    y_change = -70;
    next_state = "st_stand";
}
