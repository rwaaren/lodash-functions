-- _.isEmpty.lua
--
-- Checks if value is empty. A value is considered empty unless it’s an
-- arguments table, array, string with a length greater than 0 or an 
--object with own enumerable properties.
--@usage _.print(_.isEmpty(true))
-- --> true
-- _.print(_.isEmpty(1))
-- --> true
-- _.print(_.isEmpty({1, 2, 3}))
-- --> false
-- _.print(_.isEmpty({a= 1}))
-- --> false
--
-- @param value The value to inspect.
-- @return Returns true if value is empty, else false.
_.isEmpty = function (value)
    if _.isString(value) then
        return #value == 0
    elseif _.isTable(value) then
        local i = 0
        for k, v in _.iter(value) do
            i = i + 1
        end
        return i == 0
    else
        return true
    end
end
