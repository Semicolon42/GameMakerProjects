/// @description Insert description here
// You can write your code in this editor
offset_x = 0
offset_y = 0
padding_y = 1
font = "fnt_firstTestFont"


// Do not modify
_temp_font = draw_get_font()
draw_set_font(asset_get_index(font))
ch = string_height("A")
draw_set_font(_temp_font)
lines = []

// 
scribble_font_add("fnt_firstTestFont")
