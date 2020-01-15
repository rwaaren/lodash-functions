-- _.enqueue.lua
--
_.enqueue = function (array, value)
    return table.insert(array, 1, value)
end
