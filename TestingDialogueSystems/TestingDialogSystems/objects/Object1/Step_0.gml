/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("Z"))) {
	
	if(ChatterboxIsWaiting(chatbox)) {
		ChatterboxContinue(chatbox)
		currentLine = ChatterboxGetContent(chatbox, 0)
		scr_print_console(currentLine)
	}
}