-- _.fill.lua
--
-- Fills elements of array with value from start up to, including, end. 
-- @usage local array = {1, 2, 3, 4}
-- _.fill(array, 'x', 2, 3)
-- _.print(array)
-- --> {1, "x", "x", 4}
--
-- @param array The array to fill.
-- @param value The value to fill array with.
-- @param[opt=1] start The start position.
-- @param[opt=#array] stop The end position.
-- @return Returns array.
_.fill = function (array, value, start, stop)
    local start = start or 1
    local stop = stop or #array
    for i=start, stop, start > stop and -1 or 1 do
        array[i] = value
    end
    return  array
end
