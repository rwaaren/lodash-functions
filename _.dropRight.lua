-- _.dropRight.lua
--
-- Creates a slice of array with n elements dropped from the end.
-- @usage _.print(_.dropRight({1, 2, 3, 4, 5, 6}, 2))
-- --> {1, 2, 3, 4}
--
-- @param array The array to query.
-- @param[opt=1] n The number of elements to drop.
-- @return Returns the slice of array.
_.dropRight = function (array, n)   
    local n = n or 1
    return _.slice(array, nil, #array - n)
end
