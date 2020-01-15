-- _.lt.lua
--
-- local implicitCast function (...)
--     if 
-- end
-- Checks if value is less than other.
-- @usage _.print(_.lt(1, 3))
-- --> true
-- _.print(_.lt(3, 3))
-- --> false
--
-- @param value The value to compare.
-- @param other The other value to compare.
_.lt = function (value, other, ...)
    local value, other = _.cast(value, other)
    if _.isString(value) or _.isNumber(value) then 
        return value < other
    elseif _.isFunction(value) then
        return value(...) < other(...)
    end
    return false
end
