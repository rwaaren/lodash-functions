-- _.lastIndexOf.lua
--
-- This method is like [_.indexOf](#_.indexOf) except that it iterates
--  over elements of array from right to left.
-- @usage _.print(_.lastIndexOf({2, 3, 'x', 4, 'x', 5}, 'x'))
-- --> 5
--
-- @param array The array to search.
-- @param value The value to search for.
-- @param[opt=#array] fromIndex The index to search from.
-- @return  Returns the index of the matched value, else -1.
_.lastIndexOf = function (array, value, fromIndex)
   return _.findLastIndex(array, function(n) 
        return n == value
    end)
end
