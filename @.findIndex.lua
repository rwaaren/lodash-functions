-- @.findIndex.lua
--
@.findIndex = function(array, predicate, selfArg, start, step)
    local c = start
    while not _.isNil(array[c]) do
        if callIteratee(predicate, selfArg, array[c], c, array) then
            return c
        end
        c = c + step            
    end 
    return -1
end
