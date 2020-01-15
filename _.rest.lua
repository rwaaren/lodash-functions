-- _.rest.lua
--
-- Gets all but the first element of array.
-- @usage _.print(_.rest({1, 2, 3, 'a'}))
-- --> {2, 3, 'a'}
-- @param array The array to query.
-- @return Returns the slice ofa array.
_.rest = function (array)
    return _.slice(array, 2, #array)
end
