-- _.compact.lua
--
-- Creates an array with all falsey values removed. The values false, 
-- nil are falsey.
-- @usage local t = _.compact({'x', 'y', nil, 1, 2, 3, false, true , false})
-- _.print(t)
-- --> {"x", "y", 1, 2, 3, true}
--
-- @param array The array to compact
-- @return Returns the new array of filtered values
_.compact = function (array)
    local t = {}
    for k, v in pairs(array) do     
        if v then
            _.push(t, v)
        end
    end 
    return t
end
