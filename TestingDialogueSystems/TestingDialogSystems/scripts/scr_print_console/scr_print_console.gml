// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_print_console(printString){
	array_push(obj_shell.output, "-- " + string(printString));
	obj_shell.commandSubmitted = true
}