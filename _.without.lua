-- _.without.lua
--
-- Creates an array excluding all provided values 
-- @usage _.print(_.without({1,1, 2, 3, 2, 3, 5, 5, 1, 2},  5, 1))
-- --> {2, 3, 2, 3, 2}
--
-- @param array The array to filter.
-- @param ... The values to exclude.
-- @return Returns the new array of filtered values.
_.without = function (array, ...)
    local t = {}
    for i, v in ipairs(array) do
        local args = _.table(...)
        if _.indexOf(args, v) == -1 then
            _.push(t, v)
        end
    end
    return t
end
