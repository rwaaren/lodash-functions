-- _.zip.lua
--
-- Creates an array of grouped elements, the first of which contains 
-- the first elements of the given arrays, the second of which contains 
-- the second elements of the given arrays, and so on.
-- @usage local t = _.zip({'a', 'b', 'c'}, {1, 2, 3}, {10, 20, 30})
-- _.print(t)
-- --> {{"a", 1, 10}, {"b", 2, 20}, {"c", 3, 30}}
--
-- @param ... The arrays to process
-- @return Returns the new array of grouped elements.
_.zip = function (...)
    local t = {}
    for i, array in ipairs(_.table(...)) do
        for j, v in ipairs(array) do  
            t[j] = t[j] or {}
            t[j][i] = v
        end
    end
    return t
end
