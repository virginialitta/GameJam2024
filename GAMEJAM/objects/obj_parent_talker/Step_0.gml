if(place_meeting(x, y, obj_player)){
	if keyboard_check_released(ord("E")){
		if(my_textbox == noone){
		my_textbox = instance_create_layer(x, y, "text_layer", obj_textbox);
		my_textbox.text = my_text;
		my_textbox.creator = self;
		my_textbox.name = my_name;
		}
	}
} else {
	if(my_textbox != noone){
	instance_destroy(my_textbox);
	my_textbox = noone;
	}
}