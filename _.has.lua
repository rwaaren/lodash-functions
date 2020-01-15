-- _.has.lua
--
-- Checks if path is a direct property.
-- @usage local object = {a={b={c={d}}}}
-- print(_.has(object, {'a', 'b', 'c'}))
-- --> true
--
-- @param object The object to query
-- @param path The path to check (Array)
_.has = function (object, path)
    local obj = object
    local c = 1
    local exist = true
    while not _.isNil(path[c]) do
        obj = obj[path[c]]
        if _.isNil(obj) then
            exist = false
            break
        end
        c = c + 1
    end
    return exist   
end
