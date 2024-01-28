draw_rectangle(x - 2, y - 2, x + box_width + 2, y + box_height + 2, false);
draw_sprite(spr_box, 0 , x, y);

draw_set_font(fnt_text);

if(char_count < string_length(text[page])){
	char_count += 0.5;
}
text_part = string_copy(text[page], 1, char_count);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x + (box_width/2), y + y_buffer, name);
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text_ext(x + x_buffer, y + stringHeight + y_buffer, text_part, stringHeight, box_width - (2 * x_buffer));