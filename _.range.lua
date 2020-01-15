-- _.range.lua
--
    
-- Creates an array of numbers (positive and/or negative) progressing 
-- from start up to, including, end. 
-- If end is not specified it’s set to start with start then set to 1. 
-- @usage _.print(_.range(5, 20, 3))
-- --> {5, 8, 11, 14, 17, 20}
--
-- @param[opt=1] start The start of the range.
-- @param stop Then end of the range.
-- @param[opt=1] step The value to increment or decrement by
-- @return Returns the new array of numbers
_.range = function(start, ...)
    local start = start 
    local args = _.table(...)
    local a, b, c
    if #args == 0 then
        a = 1   -- according to lua 
        b = start
        c = 1
    else
        a = start
        b = args[1] 
        c = args[2] or 1
    end
    local t = {}    
    for i = a, b, c do
        _.push(t, i)
    end
    return t
end
