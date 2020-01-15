-- _.last.lua
--
-- Gets the last element of array.
-- @usage _.print(_.last({'w', 'x', 'y', 'z'}))
-- --> z
--
-- @param array The array to query.
-- @return Returns the last element of array.
_.last = function(array)
    return array[#array]
end
