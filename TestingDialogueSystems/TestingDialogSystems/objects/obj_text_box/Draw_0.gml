/// @description Insert description here
// You can write your code in this editor
for (var i=0; i < array_length(lines); i++) {
	var offset_x = 10
	var offset_y = 10
	var line_height = 10
	
	
	var xx = x + offset_x 
	var yy = y + offset_y + line_height * i 
	scribble(lines[i]).draw(xx, yy)
}