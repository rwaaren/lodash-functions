-- _.gt.lua
--
-- Checks if value is greater than other.
-- @usage _.print(_.gt(1, 3))
-- --> false
-- _.print(_.gt(4, 3))
-- --> true
--
-- @param value The value to compare.
-- @param other The other value to compare.
_.gt = function (value, other, ...)
    local value, other = _.cast(value, other)
    if _.isString(value) or _.isNumber(value) then 
        return value > other
    elseif _.isFunction(value) then
        return value(...) > other(...)
    end
    return false
end
