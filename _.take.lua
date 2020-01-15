-- _.take.lua
--
-- Creates a slice of array with n elements taken from the beginning.
-- @usage _.print(_.take({1, 2, 3, 4, 5}, 3))
-- --> {1, 2, 3}
--
-- @param array The array to query.
-- @param[opt=1] n The number of elements to take.
-- @return Returns the slice of array.
_.take = function(array, n)
    local n = n or 1
    return _.slice(array, 1, n)
end
