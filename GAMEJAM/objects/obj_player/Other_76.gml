/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 792F25DB
/// @DnDArgument : "var" "pitchamt"
/// @DnDArgument : "min" "-0.2"
/// @DnDArgument : "max" "0.2"
pitchamt = (random_range(-0.2, 0.2));

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 2128E990
/// @DnDArgument : "sound" " snd_foot2"
/// @DnDArgument : "pitch" "1+pitchamt"
audio_sound_pitch( snd_foot2, 1+pitchamt);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03944DB4
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)sprite_broadcast("footstep1", function() {$(13_10)	audio_play_sound_ext({ sound: snd_foot2});$(13_10)}); $(13_10)$(13_10)sprite_broadcast("footstep2", function() {$(13_10)	audio_play_sound_ext({ sound: snd_foot2 });$(13_10)}); $(13_10)"
/// @description Insert description here
// You can write your code in this editor

sprite_broadcast("footstep1", function() {
	audio_play_sound_ext({ sound: snd_foot2});
}); 

sprite_broadcast("footstep2", function() {
	audio_play_sound_ext({ sound: snd_foot2 });
});