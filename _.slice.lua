-- _.slice.lua
--
-- Creates a slice of array from start up to, including, end. 
-- @usage _.print(_.slice({1, 2, 3, 4, 5, 6}, 2, 3))
-- --> {2, 3}
-- 
-- @param array The array to slice.
-- @param[opt=1] start The start position.
-- @param[opt=#array] stop The end position
-- @return Returns the slice of array.
_.slice = function (array, start, stop)
    local start = start or 1
    local stop = stop or #array
    local t = {}    
    for i=start, stop do
        t[i - start + 1] = array[i]     
    end 
    return t
end
