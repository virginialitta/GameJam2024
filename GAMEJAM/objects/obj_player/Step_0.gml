right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
no_key = keyboard_check(vk_nokey);


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// Create Event
image_speed = 0;

// Step Event
if down_key {
	image_speed = 1;
    sprite_index = spr_player_down;
} else if (right_key) {
	image_speed = 1;
    sprite_index = spr_player_right;
} else if (left_key) {
	image_speed = 1;
    sprite_index = spr_player_left;
} else if (up_key) {
	image_speed = 1;
    sprite_index = spr_player_up;
} else if (no_key) {
	image_speed = 0;
	image_index = 0;
}


//collisions
if place_meeting(x + xspd, y, obj_wall) == true
	{
		xspd = 0;
	}
if place_meeting(x, y + yspd, obj_wall) == true
	{
		yspd = 0;
	}

x += xspd;
y += yspd;