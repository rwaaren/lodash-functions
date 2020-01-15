-- _.indexOf.lua
--
-- Gets the index at which the first occurrence of value is found in array.
-- @usage _.print(_.indexOf({2, 3, 'x', 4}, 'x'))
-- --> 3
-- 
-- @param array The array to search.
-- @param value The value to search for.
-- @param[opt=1] fromIndex The index to search from.
-- @return  Returns the index of the matched value, else -1.
_.indexOf = function (array, value, fromIndex)    
    return _.findIndex(array, function(n) 
        return n == value
    end)
end
