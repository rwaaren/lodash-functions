-- _.reduceRight.lua
--
-- This method is like _.reduce except that it iterates over elements 
-- of collection from right to left.
-- @usage local array = {0, 1, 2, 3, 4, 5};
-- _.print(_.reduceRight(array, function(str, other) 
--   return str .. other
-- end, ''))
-- --> 543210
-- 
-- @param collection The collection to iterate over.
-- @param[opt=_.identity] iteratee The function invoked per iteration.
-- @param[opt=<first element>] accumulator The initial value.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the accumulated value.
_.reduceRight = function (collection, iteratee, accumulator, selfArg)
    local accumulator = accumulator
    for k, v in _.iterRight(collection) do 
        if _.isNil(accumulator) then 
            accumulator = v 
        else
            accumulator =  callIteratee(iteratee, selfArg, accumulator, v, k, collection)
        end
    end
    return accumulator
end
