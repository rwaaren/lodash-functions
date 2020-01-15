-- _.drop.lua
--
-- Creates a slice of array with n elements dropped from the beginning.
-- @usage _.print(_.drop({1, 2, 3, 4, 5, 6}, 2))
-- --> {3, 4, 5, 6}
-- 
-- @param array The array to query.
-- @param[opt=1] n The number of elements to drop.
-- @return Returns the slice of array.
_.drop = function (array, n)
    local n = n or 1    
    return _.slice(array, n + 1)
end
