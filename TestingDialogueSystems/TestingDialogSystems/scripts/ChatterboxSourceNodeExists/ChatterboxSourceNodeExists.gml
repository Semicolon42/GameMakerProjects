/// @param sourceName
/// @param nodeTitle

function ChatterboxSourceNodeExists(_sourceName, _nodeTitle)
{
    if (!ChatterboxIsLoaded(_sourceName))
    {
        __ChatterboxError("Source file \"", _sourceName, "\" has not been loaded");
        return false;
    }
    
    return (global.chatterboxFiles[? _sourceName].FindNode(_nodeTitle) != undefined);
}