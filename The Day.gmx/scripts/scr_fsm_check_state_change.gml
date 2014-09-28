// check if next_state has changed, if so, current state will now be that state
// reset state time
// reset next state
// return true if state has changed
// show_debug_message(string(next_state));
// show_debug_message(string(object_get_name(object_index)));
if ( next_state != "none" and next_state != current_state){
    current_state = next_state;
    next_state = "none";
    state_time = 0;
    return true; // state changed
} else if ( next_state == current_state ){
    next_state = "none";
}

return false; //state is the same
