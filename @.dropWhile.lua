-- @.dropWhile.lua
--
@.dropWhile = function(array, predicate, selfArg, start, step, right)
    local t = {}
    local c = start
    while not _.isNil(array[c]) do
        ::cont::
        if #t == 0 and 
            callIteratee(predicate, selfArg, array[c], c, array) then
            c = c + step
            goto cont
        end
        if right then
            _.enqueue(t, array[c])
        else
            _.push(t, array[c])
        end
        c = c + step            
    end 
    return t
end
