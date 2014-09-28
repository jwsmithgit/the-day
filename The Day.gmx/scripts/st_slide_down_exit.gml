// currently slides up
if ( state_time == 0 ){
    desired_y = room_height + sprite_height /*+ 2*(x+(sprite_width/2))*/;
    distance_y = desired_y - y;
    time = (room_speed*6);
    
    velocity = distance_y/time; // -
    final_velocity = velocity*2; 
    initial_velocity = 0; // -
    acceleration_y = (final_velocity-initial_velocity)/time; // +  
    speed_y = initial_velocity;
   
    
    /*show_debug_message("st_slide_down_exit values: ");
    show_debug_message(string(velocity));
    show_debug_message(string(speed));
    show_debug_message(string(final_velocity));
    show_debug_message(string(acceleration_y));*/
}

if ( y < desired_y ){ 
    y += speed_y;
    speed_y += acceleration_y;
} 
if ( y - sprite_yoffset > room_height){
    instance_destroy();
}
/*if ( y < desired_y+ (distance_y/2) ){ 
    y += speed_y;
    speed_y -= acceleration_y;
} else if ( y < desired_y +speed_y and y >= desired_y+(distance_y/2 ) ){
    y += speed_y;
    speed_y += acceleration_y;
} else if ( y < desired_y and y >= desired_y+speed_y ){
    instance_destroy();
} 
*/

