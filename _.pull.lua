-- _.pull.lua
--
-- Removes all provided values from array.
-- @usage local array = {1, 2, 3, 4, 5, 4, 1, 2, 3}
-- _.pull(array, 2, 3)
-- _.print(array)
-- --> {1, 4, 5, 4, 1}
-- @param array The array to modify.
-- @param ... The values to remove.
-- @return Returns array
_.pull = function(array, ...)
    local i = 1
    while not _.isNil(array[i]) do
        for k, v in ipairs(_.table(...)) do
            if array[i] == v then 
                table.remove(array, i)
                goto cont
            end
        end
        i = i + 1
        ::cont::
    end 
    return array
end
