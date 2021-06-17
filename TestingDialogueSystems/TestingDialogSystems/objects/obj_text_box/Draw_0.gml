/// @description Insert description here
// You can write your code in this editor
var _offset_x = offset_x
var _offset_y = offset_y
var _line_height = ch
var _xscale = width / sprite_get_width(nine_slice_sprite)
var _yscale = height / sprite_get_height(nine_slice_sprite)

// Draw the nine-slice behind the text
draw_sprite_ext(nine_slice_sprite, 0, x, y, _xscale, _yscale, image_angle, image_blend, image_alpha)

// Draw the text in a scribble
for (var i=0; i < array_length(lines); i++) {	
	var xx = x + _offset_x 
	var yy = y + _offset_y + _line_height * i + padding_y
	scribble(lines[i])
		.wrap(width)
		.draw(xx, yy)
		
}