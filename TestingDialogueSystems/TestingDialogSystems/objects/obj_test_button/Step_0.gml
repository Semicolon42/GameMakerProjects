/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left)) {
	if (instance_position(mouse_x, mouse_y, self.id)) {
	    image_index = 1
	}
} else {
	image_index = 0
}

if(mouse_check_button_pressed(mb_left)) {
	if (instance_position(mouse_x, mouse_y, self.id)) {
	    image_index = 1
		
		if(!instance_exists(obj_text_box)) {
			instance_create_depth(x + 50, y, depth-1, obj_text_box_yarn_controller)	
		}
	}
}