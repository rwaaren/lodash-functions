-- _.str.lua
--
   
-- Cast anything to string. If any function detected, call and cast its
-- result.
-- @usage print(_.str({1, 2, 3, 4, {k=2, {'x', 'y'}}}))
-- --> {1, 2, 3, 4, {{"x", "y"}, ["k"]=2}}
-- print(_.str({1, 2, 3, 4, function(a) return a end}, 5))
-- --> {1, 2, 3, 4, 5}
--
-- @param value value to cast
-- @param ... The parameters to pass to any detected function
-- @return casted value
_.str = function (value, ...)
    local str = '';
    -- local v;
    if _.isString(value) then     
        str = value
    elseif _.isBoolean(value) then
        str = value and 'true' or 'false'
    elseif _.isNil(value) then
        str = 'nil'
    elseif _.isNumber(value) then
        str = value .. ''
    elseif _.isFunction(value) then       
        str = _.str(value(...))
    elseif _.isTable(value) then
        str = '{'
        for k, v in pairs(value) do
            v = _.isString(v) and dblQuote(v) or _.str(v, ...)
            if _.isNumber(k) then
                str = str .. v .. ', '              
            else
                str = str .. '[' .. dblQuote(k) .. ']=' .. v .. ', '
            end
        end     
        str = str:sub(0, #str - 2) .. '}'
    end
    return str
end
