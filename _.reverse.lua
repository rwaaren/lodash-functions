-- _.reverse.lua
--
-- Reverses the array so the first element becomes the last, the second 
-- element becomes the second to last, and so on. 
-- @usage _.print(_.reverse({1, 2, 3, 'a', 'b'}))
-- --> {'b', 'a', 3, 2, 1}
--
-- @param array The array to mutate.
-- @return Returns the new reversed array.
_.reverse = function (array)
    local t = {}
    for i, v in ipairs(array) do
        _.enqueue(t, v)
    end
    return t
end
