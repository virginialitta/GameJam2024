if(keyboard_check_pressed(vk_space)){
	if(char_count < string_length(text[page])){
		char_count = string_length(text[page]);
	} 
	else if(page + 1 < array_length(text)){
		page += 1;
		char_count = 0;
	} else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}