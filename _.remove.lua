-- _.remove.lua
--
-- Removes all elements from array that predicate returns truthy for 
-- and returns an array of the removed elements.
-- @usage local array = {1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 1, 2, 3, 5, 4}
-- local t = _.remove(array, function(value)
--     return value > 4
-- end)
-- _.print(array)
-- --> {1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4}
-- _.print(t)
-- --> {5, 6, 7, 5, 6, 5}
--
-- @param array The array to modify.
-- @param predicate The function invoked per iteration.
-- @return Returns the new array of removed elements
_.remove = function(array, predicate)
    local t = {}
    local c = 1
    local predicate = predicate or _.identity
    while not _.isNil(array[c]) do
        if predicate(array[c], c, array) then
            _.push(t, table.remove(array, c))
            goto cont
        end        
        c = c + 1
        ::cont::
    end 
    return t
end
