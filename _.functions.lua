-- _.functions.lua
--
-- Creates an array of function property names from all enumerable 
-- properties, own and inherited, of object.
-- @usage _.print(_.functions(table))
-- --> {"concat", "insert", "maxn", "pack", "remove", "sort", "unpack"}
--
-- @param object The object to inspect.
-- @return Returns the new array of property names.
_.functions = function(object)
    local t = {}
    for k, v in _.iter(object) do
        if _.isFunction(v) then
            _.push(t, k)
        end
    end
    return t
end
