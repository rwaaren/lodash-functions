-- _.keys.lua
--
-- Creates an array of the own enumerable property names of object. 
-- @usage _.print(_.keys("test"))
-- --> {1, 2, 3, 4}
-- _.print(_.keys({a=1, b=2, c=3}))
-- --> {"c", "b", "a"}
-- 
-- @param object The object to query. (table|string)
-- @return Returns the array of property names.
_.keys = function (object)
    if _.isTable(object) then
        return getSortedKeys(object)
    elseif _.isString(object) then
        local keys = {}
        for i=1, #object do
            keys[i] = i
        end
        return keys
    end
end
