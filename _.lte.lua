-- _.lte.lua
--
-- Checks if value is less than or euqal to other.
-- @usage _.print(_.lt(4, 3))
-- --> false
-- _.print(_.lt(3, 3))
-- --> true
-- @param value The value to compare.
-- @param other The other value to compare.
_.lte = function (value, other, ...)    
    if _.isNil(value) or _.isBoolean(value) then 
        return value == other
    end
    local value, other = _.cast(value, other)
    if _.isString(value) or _.isNumber(value) then 
        return value <= other
    elseif _.isFunction(value) then
        return value(...) <= other(...)
    elseif _.isTable(value) then
        return false
    end
    return false
end
