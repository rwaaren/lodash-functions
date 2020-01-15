-- _.iterRight.lua
--
_.iterRight = function(value)
    if _.isString(value) then
        local i = #value + 1
        return function()            
            if _.gt(i, 1) then
                i = i - 1
                local c = value:sub(i, i)                
                return i, c
            end
        end
    elseif _.isTable(value) then
        return iterCollection(value, true)
    else
        return function() end
    end
end
