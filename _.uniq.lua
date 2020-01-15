-- _.uniq.lua
--
-- Creates a duplicate-free version of an array in which only the first 
-- occurence of each element is kept. If an iteratee function is provided 
-- it’s invoked for each element in the array to generate the criterion 
-- by which uniqueness is computed. The iteratee is bound to thisArg and 
-- invoked with three arguments: (value, index, array). 
-- @usage _.print(_.uniq({1, 3, 2, 2}))
-- --> {1, 3, 2}
--_.print(_.uniq({{x=1}, {x=2}, {x=2}, {x=3}, {x=1}}, function(n)
--     return n.x
-- end))
-- --> {{["x"]=1}, {["x"]=2}, {["x"]=3}}
--
-- @param array The array to inspect.
-- @param iteratee The function invoked per iteration.
-- @param selfArg The self binding of predicate.
-- @return Returns the new duplicate-value-free array.
_.uniq = function(array, iteratee, selfArg)
    local t = {}
    local results = {}
    for k, v in ipairs(array) do
        local r = callIteratee(iteratee, selfArg, v, k, array)
        if _.indexOf(results, r) == -1 then
            _.push(t, v)
        end
        _.push(results, r)
    end
    return t
end
