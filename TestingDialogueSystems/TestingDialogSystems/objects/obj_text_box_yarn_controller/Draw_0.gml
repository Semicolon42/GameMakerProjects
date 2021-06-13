/// @description Insert description here
// You can write your code in this editor
//Iterate over all text and draw it
if(!DEBUG) return 0

var _x = 10;
var _y = 10;

if (ChatterboxIsStopped(box))
{
    //If we're stopped then show that
    draw_text(_x, _y, "(Chatterbox stopped)");
}
else
{
    //All the spoken text
    var _i = 0;
    repeat(ChatterboxGetContentCount(box))
    {
        var _string = ChatterboxGetContent(box, _i);
        draw_text(_x, _y, _string);
        _y += string_height(_string);
        ++_i;
    }
    
    //Bit of spacing...
    _y += 30;

    if (ChatterboxIsWaiting(box))
    {
        //If we're in a "waiting" state then prompt the user for basic input
        draw_text(_x, _y, "(Press Space)");
    }
    else
    {
        //All the options
        var _i = 0;
        repeat(ChatterboxGetOptionCount(box))
        {
            var _string = ChatterboxGetOption(box, _i);
            draw_text(_x, _y, string(_i+1) + ") " + _string);
            _y += string_height(_string);
            ++_i;
        }
    }
}