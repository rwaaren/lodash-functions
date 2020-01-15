-- _.bool.lua
--
-- Cast anything to boolean. If any function detected, call and cast its
-- result. Return false for 0, nil, table and empty string. 
-- @usage print(_.bool({1, 2, 3}))
-- --> false
-- print(_.bool("123"))
-- --> true
-- print(_.bool(0))
-- --> false
-- print(_.bool(function(a) return a end, "555"))
-- --> true
--
-- @param value value to cast
-- @param ... The parameters to pass to any detected function
-- @return casted value
_.bool = function (value, ...)
    local bool = false
    if _.isString(value) then     
        bool = #value > 0
    elseif _.isBoolean(value) then
        bool = value
    elseif _.isNumber(value) then
        bool = value ~= 0
    elseif _.isFunction(value) then
        bool = _.bool(value(...))    
    end
    return bool
end
