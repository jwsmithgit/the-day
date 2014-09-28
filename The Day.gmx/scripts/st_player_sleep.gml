if ( state_time == 0 ){

    sprite_index = spr_player_sleep;
    wake_up_trigger = false;
    y = room_height+sprite_height;
    x = room_width/5;
    image_speed = 1;
}


if ( obj_game_master.current_state = "start_house" ){
    y = room_height - 220;
}
    
//show_debug_message(string( !object_exists(instance_find(obj_start_background,0))));
if ( image_index+1 == image_number and wake_up_trigger == true ){
    next_state = "st_wake_up";
}
