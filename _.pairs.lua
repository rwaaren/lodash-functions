-- _.pairs.lua
--
--- 
-- Creates a two dimensional array of the key-value pairs for object.
-- @usage  _.print(_.pairs({1, 2, 'x', a='b'}))
-- --> {{1, 1}, {2, 2}, {3, "x"}, {"a", "b"}}
--
-- @param object The object to query
-- @return Returns the new array of key-value pairs.
_.pairs = function (object)
    local t = {}
    for k, v in _.iter(object) do
        _.push(t, {k, v})
    end
    return t
end
