-- _.union.lua
--
-- Creates an array of unique values, from all of the 
-- provided arrays.
-- @usage _.print(_.union({1, 2}, {4, 2}, {2, 1}))
-- --> {1, 2, 4}
--
-- @param ... The arrays to inspect
_.union = function (...)
    local tmp = _.table(...)
    local t = {}    
    for i, array in ipairs(tmp) do
        for i2, v in ipairs(array) do
            if _.indexOf(t, v) == -1 then                
                _.push(t, v)
            end
        end
    end
    return t
end
