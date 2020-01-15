-- _.num.lua
--
-- Cast anything to number. If any function detected, call and cast its
-- result. Return 0 for nil and table. 
-- @usage print(_.num({1, 2, 3}))
-- --> 0
-- print(_.num("123"))
-- --> 123
-- print(_.num(true))
-- --> 1
-- print(_.num(function(a) return a end, "555"))
-- --> 555
--
-- @param value value to cast
-- @param ... The parameters to pass to any detected function
-- @return casted value
_.num = function (value, ...)
    local num = 0
    if _.isString(value) then   
        ok = pcall(function()
            num = value + 0
        end)
        if not ok then
            num = math.huge
        end
    elseif _.isBoolean(value) then
        num = value and 1 or 0    
    elseif _.isNumber(value) then
        num = value
    elseif _.isFunction(value) then
        num = _.num(value(...))
    end
    return num 
end
