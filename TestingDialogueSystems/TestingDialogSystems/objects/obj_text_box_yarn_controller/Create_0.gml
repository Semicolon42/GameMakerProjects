/// @description Insert description here
// You can write your code in this editor
example_post_processing = function(text) {
	
}



DEBUG = false
button_advance_text = vk_space
text_post_processing = scr_yarn_post_processing_name_color

// Load the yarn file and create the chatterbox from the yarn_file
ChatterboxLoadFromFile(yarn_filename)
box = ChatterboxCreate();
// Jump to the start node: expects each yarn file to start with "Start"
ChatterboxJump(box, "Start")

// Debug lines
scr_print_console("chatbox Current Content Count: " + string(ChatterboxGetContentCount(box)))
scr_print_console("chatbox Current Content: " + string(ChatterboxGetContent(box, 0)))

advance = function() {
	if(ChatterboxIsWaiting(box)) {
		ChatterboxContinue(box)
		current_line = ChatterboxGetContent(box, 0)
		if (current_line != undefined){
			current_line = text_post_processing(current_line)
			scr_print_console(current_line)
			with(obj_text_box) {
				lines = [other.current_line]
				//array_push(lines, other.current_line)
			}
		}
	}
}