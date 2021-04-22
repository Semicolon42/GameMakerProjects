/// @description Insert description here
// You can write your code in this editor



ChatterboxLoadFromFile("Test.yarn")
chatbox = ChatterboxCreate("Test.yarn");
scr_print_console("Loaded Yarn File")
ChatterboxJump(chatbox, "Start")
scr_print_console("chatbox Current Content Count: " + string(ChatterboxGetContentCount(chatbox)))
scr_print_console("chatbox Current Content: " + string(ChatterboxGetContent(chatbox, 0)))
