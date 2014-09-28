// switch songs
level = argument0;
 

if ( audio_is_playing(old_song)){
    audio_stop_sound(old_song);
}
if ( audio_is_playing(current_song)){
    old_song = current_song
    audio_sound_gain( old_song, 0, 5000 );
}
// next song fade in
if ( ds_map_exists( level, "level_song" )){
    
    if ( ds_map_find_value( level, "level_song" ) !=  current_song){

        current_song = ds_map_find_value(level, "level_song");
        audio_sound_gain( current_song, 0, 0 );
        audio_play_sound( current_song, 1, 99 );
    } else {
        old_song = noone;
    }
    
    audio_sound_gain( current_song, 1, 10000 );
    new_pitch = start_pitch + ((total_distance)/(level_length) * (end_pitch-start_pitch));
    audio_sound_pitch( current_song, new_pitch );
} else { current_song = noone; }

