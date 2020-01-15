-- _.reduce.lua
--
-- Reduces collection to a value which is the accumulated result of 
-- running each element in collection through iteratee, where each 
-- successive invocation is supplied the return value of the previous. 
-- If accumulator is not provided the first element of collection is used
--  as the initial value. The iteratee is bound to selfArg and invoked 
-- with four arguments: (accumulator, value, index|key, collection). 
-- @usage _.print(_.reduce({1, 2, 3}, function(total, n)
--   return n + total;
-- end))
-- --> 6
-- _.print(_.reduce({a = 1, b = 2}, function(result, n, key) 
--     result[key] = n * 3
--     return result;
-- end, {}))
-- --> {["a"]=3, ["b"]=6}
-- 
-- @param collection The collection to iterate over.
-- @param[opt=_.identity] iteratee The function invoked per iteration.
-- @param[opt=<first element>] accumulator The initial value.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the accumulated value.
_.reduce = function (collection, iteratee, accumulator, selfArg)
    local accumulator = accumulator
    for k, v in _.iter(collection) do 
        if _.isNil(accumulator) then 
            accumulator = v 
        else
            accumulator =  callIteratee(iteratee, selfArg, accumulator, v, k, collection)
        end
    end
    return accumulator
end
