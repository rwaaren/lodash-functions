-- _.size.lua
--
-- Gets the size of collection by returning its length for array-like 
-- values or the number of own enumerable properties for objects.
-- @usage _.print(_.size({'abc', 'def'}))
-- --> 2
-- _.print(_.size('abcdefg'))
-- --> 7
-- _.print(_.size({a=1, b=2,c=3}))
-- --> 3
--
-- @param collection The collection to inspect.
-- @return Returns the size of collection.
_.size = function (collection)
    local c = 0
    for k, v in _.iter(collection) do
        c = c + 1
    end
    return c
end
