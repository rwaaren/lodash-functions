-- _.difference.lua
--
-- Creates an array of unique array values not included in the other 
-- provided arrays.
-- @usage _.print(_.difference({3, 1, 2, 9, 5, 9}, {4, 5}, {9, 1}))
-- --> {3, 2}
--
-- @param array The array to inspect.
-- @param ... The arrays of values to exclude.
-- @return Returns the new array of filtered values.
_.difference = function (array, ...)
    local t = {}
    local c = 1
    local tmp = _.table(...)
    for k, v in ipairs(array) do
        while not _.isNil(tmp[c]) do
            for j, v2 in ipairs(tmp[c]) do
                if v == v2 then goto doubleBreak end
            end
            c = c + 1
        end
        _.push(t, v)
        ::doubleBreak::
        c = 1
    end
    return t
end
