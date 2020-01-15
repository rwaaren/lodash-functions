-- _.intersection.lua
--
-- 
-- Creates an array of unique values that are included in all of the 
-- provided arrays.
-- @usage _.print(_.intersection({1, 2}, {4, 2}, {2, 1}))
-- --> {2}
--
-- @param The arrays to inspect.
-- @return Returns the new array of shared values.
_.intersection = function (...)
    local tmp = _.table(...)
    local first = table.remove(tmp, 1)
    local t = {}
    for i, v in ipairs(first) do
        local notFound = false
        for i2, v2 in ipairs(tmp) do
            if _.indexOf(v2, v) == -1 then
                notFound = true
                break
            end
        end
        if not notFound then 
            _.push(t, v)
        end
    end
    return t
    -- body
end
