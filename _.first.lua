-- _.first.lua
--
-- Gets the first element of array.
-- @usage _.print(_.first({'w', 'x', 'y', 'z'}))
-- --> w
--
-- @param array The array to query.
-- @return Returns the first element of array.
_.first = function (array)
    return array[1]
end
