-- _.cast.lua
--
_.cast = function (a, b)
    if type(a) == type(b) then return a, b end
    local cast
    if _.isString(a) then cast = _.str
    elseif _.isBoolean(a) then cast = _.bool
    elseif _.isNumber(a) then cast = _.num
    elseif _.isFunction(a) then cast = _.func
    elseif _.isTable(a) then cast = _.table
    end
    return a, cast(b)
end
