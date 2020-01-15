-- _.initial.lua
--
-- 
-- Gets all but the last element of array.
-- @usage _.print(_.initial({1, 2, 3, 'a'}))
-- --> {1, 2, 3}
--
-- @param array The array to query.
-- @return Returns the slice of array.
_.initial = function (array)
    return _.slice(array, nil, #array - 1)
end
