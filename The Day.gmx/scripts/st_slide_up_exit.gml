if ( state_time == 0 ){
    
    desired_y = -sprite_height - 2*(room_width - abs(x));
    
    distance_y = desired_y-y;
    time = (room_speed*6);
    
    velocity = distance_y/time; // -
    initial_velocity = 0; // -
    final_velocity = velocity*2; 
    acceleration_y = (final_velocity-initial_velocity)/time; // +  
    speed_y = initial_velocity;
    
    /*show_debug_message("distance_y" + ": " + string(distance_y));
    show_debug_message(string(velocity));
    show_debug_message(string(speed_y));
    show_debug_message(string(final_velocity));
    show_debug_message(string(acceleration_y));*/
}

// check if the played is walking, grab new acceleration
// decrease y position
// increase speed
if ( y > desired_y ){ 
    y += speed_y;
    speed_y += acceleration_y;
} 

if ( y <= desired_y ){
    instance_destroy()
}


