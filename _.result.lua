-- _.result.lua
--
-- This method is like _.get except that if the resolved value is a
-- function it’s invoked with additional parameters and its result is returned.
-- @usage local object = {a=5, b={c=function(a) print(a) end}}
-- _.result(object, {'b', 'c'}, nil, 5)
-- --> 5
--
-- @param object The object to query.
-- @param path The path of the property to get.
-- @param[opt=nil] defaultValue The value returned if the resolved value is nil.
-- @param ... Additional parameters to pass to function
-- @return Returns the resolved value.
_.result = function (object, path, defaultValue, ...)
    local result = _.get(object, path, defaultValue)
    if _.isFunction(result) then 
        return result(...)
    else 
        return result
    end
end
