-- _.sortBy.lua
--
-- Creates an array of elements, sorted in ascending order by the 
-- results of running each element in a collection through iteratee. 
-- The iteratee is bound to selfArg and 
-- invoked with three arguments: (value, index|key, collection). 
-- @usage local t = {1, 2, 3}
-- _.print(_.sortBy(t, function (a)
--     return math.sin(a)
-- end))
-- --> {1, 3, 2}
-- local users = {
--     { user='fred' },
--     { user='alex' },
--     { user='zoee' },
--     { user='john' },
-- }
-- _.print(_.sortBy(users, function (a)
--     return a.user
-- end))
-- --> {{["user"]="alex"}, {["user"]="fred"}, {["user"]="john"}, {["user"]="zoee"}}
-- 
-- @param collection The collection to iterate over.
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
-- @return  Returns the new sorted array.
_.sortBy = function (collection, predicate, selfArg)
    local t ={}
    local empty = true
    local previous
    for k, v in _.iter(collection) do 
        if empty then 
            _.push(t, v)
            previous = callIteratee(predicate, selfArg, v, k, collection)            
            empty = false
        else
            local r = callIteratee(predicate, selfArg, v, k, collection)
            if _.lt(previous, r) then
                table.insert(t, v)
                previous = r
            else
                table.insert(t, #t, v)
            end            
        end
    end
    return t
end
