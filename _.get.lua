-- _.get.lua
--
-- Gets the property value at path of object. If the resolved value 
-- is nil the defaultValue is used in its place.
-- @usage local object = {a={b={c={d=5}}}}
-- _.print(_.get(object, {'a', 'b', 'c', 'd'}))
-- --> 5
--
-- @param object The object to query.
-- @param path The path of the property to get.
-- @param[opt=nil] defaultValue The value returned if the resolved value is nil.
-- @return Returns the resolved value.
_.get = function (object, path, defaultValue)
    if _.isTable(object) then
        local value = object
        local c = 1
        while not _.isNil(path[c]) do
            if not _.isTable(value) then return defaultValue end
            value = value[path[c]]    
            c = c + 1
        end
        return value or defaultValue
    elseif _.isString(object) then
        local index = path[1]
        return object:sub(index, index)
    end
end
