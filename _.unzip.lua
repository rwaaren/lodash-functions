-- _.unzip.lua
--
-- This method is like [_.zip](#_.zip) except that it accepts an array of grouped 
-- elements and creates an array regrouping the elements to their pre-zip 
-- configuration.
-- @usage local t = _.zip({'a', 'b', 'c'}, {1, 2, 3}, {10, 20, 30})
-- _.print(t)
-- --> {{"a", 1, 10}, {"b", 2, 20}, {"c", 3, 30}}
-- _.print(_.unzip(t))
-- --> {{"a", "b", "c"}, {1, 2, 3}, {10, 20, 30}}
--
-- @param array The array of grouped elements to process.
-- @return Returns the new array of regrouped elements.
_.unzip = function (array)
    return _.zip(_.args(array))
end
