// determines speed of object by depth level
depth_value = argument0;


// interval
var min_xmove = 0;
var max_xmove = player_speed*2;
var max_depth = 100;
var min_depth = -100;
var player_depth = 0;

// object_speed
// as far and as slow as obejcts can move
if( depth_value > max_depth){
    return min_xmove;
}
// as close and as fast as objects can move
else if( depth_value < min_depth){
    return max_xmove;
}
// speed is between 0 and player speed
else if( depth_value > player_depth ){
    return player_speed - ((depth_value/max_depth)*(player_speed - min_xmove));
} 
// speed is between player speed and max speed
else if( depth_value < player_depth ){
    return player_speed + ((depth_value/min_depth)*(max_xmove - player_speed));
} 
// object is at same depth as player and moves at same speed
else { return player_speed; }
