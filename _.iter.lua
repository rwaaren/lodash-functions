-- _.iter.lua
--
_.iter = function(value)
    if _.isString(value) then
        local i = 0
        return function()            
            if _.lt(i, #value) then
                i = i + 1
                local c = value:sub(i, i)                
                return i, c
            end
        end
    elseif _.isTable(value) then
        return iterCollection(value)
    else
        return function() end
    end
end
