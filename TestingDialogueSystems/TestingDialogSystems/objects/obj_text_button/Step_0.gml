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
		
		if(ChatterboxIsWaiting(chatbox)) {
			ChatterboxContinue(chatbox)
			currentLine = ChatterboxGetContent(chatbox, 0)
			scr_print_console(currentLine)
			with(obj_text_box) { 
			    array_push(lines, other.currentLine)
			}
		}
	}
}