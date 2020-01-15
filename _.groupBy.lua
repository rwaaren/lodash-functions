-- _.groupBy.lua
--
-- Creates an object composed of keys generated from the results of 
-- running each element of collection through iteratee. The corresponding 
-- value of each key is an array of the elements responsible for generating 
-- the key. The iteratee is bound to selfArg and invoked with three arguments:
-- (value, index|key, collection). 
-- @usage _.print(_.groupBy({4.3, 6.1, 6.4}, function(n) 
--   return math.floor(n)
-- end))
-- --> {[4]={4.3}, [6]={6.1, 6.4}}
-- 
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] iteratee The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the composed aggregate object.
_.groupBy = function (collection, iteratee, selfArg)
    local t = {}
    for k, v in _.iter(collection) do
        local r = _.str(
            callIteratee(iteratee, selfArg, v, k, collection)
        )
        if _.isNil(t[r]) then
            t[r] = {v}
        else
            _.push(t[r], v)
        end
    end
    return t
end
