-- _.includes.lua
--
-- Checks if target is in collection. 
-- @usage print(_.includes({1, 2, 'x', 3, ['5']=4, x=3, 5}, 'x'))
-- --> true
-- print(_.includes({1, 2, 'x', 3, ['5']=4, x=3, 5}, 'z'))
-- --> false
-- @param collection The collection to search
-- @param target The value to search for.
_.includes = function (collection, target)
    local result = _.find(collection, function (n)
        return n == target
    end)
    return result ~= nil
end
