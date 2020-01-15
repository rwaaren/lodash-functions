-- _.pluck.lua
--
--- 
-- Gets the property value of path from all elements in collection.
-- @usage local users = {
--   { user = 'barney', age = 36, child = {age = 5}},
--   { user = 'fred',   age = 40, child = {age = 6} }
-- }
-- _.print(_.pluck(users, {'user'}))
-- --> {"barney", "fred"}
-- _.print(_.pluck(users, {'child', 'age'}))
-- --> {5, 6}
--
-- @param collection The collection to iterate over.
-- @param path The path of the property to pluck.
_.pluck = function (collection, path)
    local t = {}
    for k, value in _.iter(collection) do 
        _.push(t, _.get(value, path))
    end
    return t
end
