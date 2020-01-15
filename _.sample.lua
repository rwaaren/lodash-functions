-- _.sample.lua
--
-- Gets a random element or n random elements from a collection.
-- @usage _.print(_.sample({1, 2, 3, a=4, b='x', 5, 23, 24}, 4))
-- --> {5, "x", 1, 23}
-- _.print(_.sample({1, 2, 3, a=4, b='x', 5, 23, 24}))
-- --> 4
-- 
-- @param collection The collection to sample.
-- @param[opt=1] n The number of elements to sample.
-- @return Returns the random sample(s).
_.sample = function (collection, n)
    local n = n or 1
    local t = {}
    local keys = _.keys(collection)
    for i=1, n do        
        local pick = keys[_.random(1, #keys)]
        _.push(t, _.get(collection, {pick}))
    end
    return #t == 1 and t[1] or t
end
