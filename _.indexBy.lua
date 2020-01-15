-- _.indexBy.lua
--
-- Creates an object composed of keys generated from the results of 
-- running each element of collection through iteratee. The corresponding 
-- value of each key is the last element responsible for generating the key. 
-- The iteratee function is bound to selfArg and invoked with three arguments:
-- (value, index|key, collection). 
-- @usage local keyData = {
--     {dir='l', a=1},
--     {dir='r', a=2}
-- }
-- _.print('40.indexBy          :', _.indexBy(keyData, function(n)
--     return n.dir
-- end))
-- --> {["l"]={[a]=1, [dir]="l"}, ["r"]={[a]=2, [dir]="r"}}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] iteratee The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the composed aggregate object.
_.indexBy = function (collection, iteratee, selfArg)
    local t = {}
    for k, v in _.iter(collection) do
        local r = _.str(
            callIteratee(iteratee, selfArg, v, k, collection)
        )
        t[r] = v
    end
    return t
end
