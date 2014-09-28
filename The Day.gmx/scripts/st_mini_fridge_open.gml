if ( image_index == 8 ){
    seed = get_string("What will you eat?","");
    scr_seed_creation(seed);
    obj_game_master.spawn_rest = true;
} else if ( image_index == 10 ){
    //static_sound = audio_emitter_create();
    //audio_falloff_set_model(audio_falloff_linear_distance_clamped);
    //audio_emitter_position(static_sound, obj_start_house_television.x - obj_player.x, obj_start_house_television.y - obj_player.y, 0);
    //audio_emitter_falloff(static_sound, 50, room_width, 1);
    //audio_play_sound_on(static_sound, tvstatic, true, 1);
    obj_game_master.current_song = audio_play_sound( tvstatic, 1, 99 );
    obj_start_house_television.sprite_index = spr_start_house_television_on;
}

// at end of state, Freeze
if ( image_index+1 == image_number ){
    image_speed = 0;
}
