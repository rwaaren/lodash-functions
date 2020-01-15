-- @.getSortedKeys.lua
--
@.getSortedKeys = function(collection, desc)
    local sortedKeys = {} 
    for k, v in pairs(collection) do
        table.insert(sortedKeys, k)
    end
    if desc then
        table.sort(sortedKeys, _.gt)
    else
        table.sort(sortedKeys, _.lt)
    end
    return sortedKeys
end
