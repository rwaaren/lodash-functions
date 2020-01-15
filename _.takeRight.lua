-- _.takeRight.lua
--
-- Creates a slice of array with n elements taken from the end.
-- @usage _.print(_.takeRight({1, 2, 3, 4, 5}, 3))
-- --> {3, 4, 5}
-- 
-- @param array The array to query.
-- @param[opt=1] n The number of elements to take.
-- @return Returns the slice of array.
_.takeRight = function (array, n)
    local n = n or 1
    return _.slice(array, #array - n +1)
end
