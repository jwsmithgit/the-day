if ( state_time == 0 ){

    sprite_index = spr_player_fall_and_throw_up;}

if ( x > x_destination and x < x_destination + 5 ) { x = x_destination } 
else if ( x > x_destination ) { x -= 5 }

if ( x == x_destination ){
    x_change = 95;
    y_change = 69;
    next_state = "st_stand_up_from_throw_up";
}

if ( image_index+1 == image_number ){
    image_index = 30;
}
