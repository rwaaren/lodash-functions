-- _.at.lua
--
--- Collection
-- @section Collection
-- Creates an array of elements corresponding to the given keys, 
-- or indexes, of collection. Keys may be specified as individual 
-- arguments or as arrays of keys.
-- @usage _.print(_.at({'1', '2', '3', '4', a='a', b='b'}, {1, 2}, 'b'))
-- --> {"1", "2", "b"}
--
-- @param collection The collection to iterate over.
-- @param ... The property names or indexes of elements to pick, 
-- specified individually or in arrays.
-- @return Return the new array of picked elements.
_.at = function (collection, ...)
    local t = {}
    for k, key in ipairs(_.table(...)) do
        if _.isTable(key) then
            for k, key in ipairs(key) do
                _.push(t, collection[key])
            end
        else
            _.push(t, collection[key])
        end
    end
    return t
end
