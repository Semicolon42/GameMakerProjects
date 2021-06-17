/// @description Insert description here
// You can write your code in this editor
offset_x = 10
offset_y = 10
padding_y = 1
font = "fnt_firstTestFont"
nine_slice_sprite = spr_textbox_nine_slice
width = 500
height = 200

// Do not modify
_temp_font = draw_get_font()
draw_set_font(asset_get_index(font))
ch = string_height("A")
draw_set_font(_temp_font)
lines = []