-- _.flattenDeep.lua
--
-- Recursively flattens a nested array.
-- @usage _.print(_.flattenDeep({1, 2, {3, 4, {5, 6}}}))
-- --> {1, 2, 3, 4, 5, 6}
--
-- @param array The array to flatten.
-- @return Returns the new flattened array.
_.flattenDeep = function (array)
    return _.flatten(array, true)
end
