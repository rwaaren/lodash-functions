-- _.countBy.lua
--
-- Creates an object composed of keys generated from the results of 
-- running each element of collection through iteratee. The corresponding 
-- value of each key is the number of times the key was returned by 
-- iteratee. The iteratee is bound to selfArg and invoked with three arguments:
-- (value, index|key, collection). 
--
-- @usage _.print(_.countBy({4.3, 6.1, 6.4}, function(n) 
--   return math.floor(n)
-- end))
-- --> {[4]=1, [6]=2}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] iteratee The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the composed aggregate object.
_.countBy = function (collection, iteratee, selfArg)
    local t = {}
    for k, v in _.iter(collection) do
        local r = _.str(
            callIteratee(iteratee, selfArg, v, k, collection)
        )
        if _.isNil(t[r]) then
            t[r] = 1
        else
            t[r] = t[r] + 1
        end
    end
    return t
end
