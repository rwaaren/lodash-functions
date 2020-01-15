-- @.takeWhile.lua
--
@.takeWhile = function(array, predicate, selfArg, start, step, right)
    local t = {}
    local c = start
    while not _.isNil(array[c]) do
        if callIteratee(predicate, selfArg, array[c], c, array) then
            if right then
                _.enqueue(t, array[c])
            else
                _.push(t, array[c])
            end
        else
            break
        end
        c = c + step            
    end 
    return t
end
