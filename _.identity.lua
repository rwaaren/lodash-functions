-- _.identity.lua
--
-- This method returns the first argument provided to it.
-- @usage local object = {x=5}
-- _.print(_.identity(object) == object);
-- --> true
--
-- @param value Any value.
-- @return Returns value.
_.identity = function(...) return ... end
local iterCollection = function(table, desc)
    local sortedKeys = getSortedKeys(table, desc)
    local i = 0
    return function ()
        if _.lt(i, #sortedKeys) then
            i = i + 1
            local key = sortedKeys[i]
            return key, table[key]
        end
    end
end
