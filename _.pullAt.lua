-- _.pullAt.lua
--
-- Removes elements from array corresponding to the given indexes and 
-- returns an array of the removed elements. Indexes may be specified 
-- as an array of indexes or as individual arguments. 
-- @usage local array = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'}
-- local t = _.pullAt(array, 4, 9, 8)
-- _.print(array)
-- --> {"a", "b", "c", "e", "f", "g", "j"}
-- _.print(t)
-- --> {"d", "h", "i"}
--
-- @param array The array to modify.
-- @param ... The indexes of elements to remove
-- @return Returns the new array of removed elements.
_.pullAt = function (array, ...)
    local t = {}
    local tmp = _.table(...)
    table.sort(tmp, function(a, b)
        return _.gt(a, b)
    end)    
    for i, index in ipairs(tmp) do
        _.enqueue(t, table.remove(array, index))
    end
    return t
end
