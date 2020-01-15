-- _.values.lua
--
-- Creates an array of the own enumerable property values of object. 
-- @usage _.print(_.values("test"))
-- --> {"t", "e", "s", "t"}
-- _.print(_.values({a=1, b=2, c=3}))
-- --> {1, 3, 2}
-- 
-- @param object The object to query. (table|string)
-- @return Returns the array of property values.
_.values = function (object)
    local t = {}
    for k, v in _.iter(object) do
        _.push(t, v)
    end
    return t
end
