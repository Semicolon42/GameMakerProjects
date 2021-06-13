/// @description Insert description here
// You can write your code in this editor
image_speed = 0

ChatterboxLoadFromFile("Test.yarn")
chatbox = ChatterboxCreate("Test.yarn");
scr_print_console("Loaded Yarn File")
ChatterboxJump(chatbox, "Start")
scr_print_console("chatbox Current Content Count: " + string(ChatterboxGetContentCount(chatbox)))
scr_print_console("chatbox Current Content: " + string(ChatterboxGetContent(chatbox, 0)))

advance = function() {
	if(ChatterboxIsWaiting(chatbox)) {
		ChatterboxContinue(chatbox)
		currentLine = ChatterboxGetContent(chatbox, 0)
		scr_print_console(currentLine)
		with(obj_text_box) { 
			array_push(lines, other.currentLine)
		}
	}
}