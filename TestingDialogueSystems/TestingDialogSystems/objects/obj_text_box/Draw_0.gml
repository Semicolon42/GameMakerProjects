/// @description Insert description here
// You can write your code in this editor
var _offset_x = offset_x
var _offset_y = offset_y
var _line_height = ch

for (var i=0; i < array_length(lines); i++) {	
	var xx = x + _offset_x 
	var yy = y + _offset_y + _line_height * i + padding_y
	scribble(lines[i]).draw(xx, yy)
}