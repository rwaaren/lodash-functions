---
-- Push value to first element of array
---
--@Usage local array = {1, 2, 3, 4}
-- _.enqueue(array, 5)
-- _print(array)
-- --> {5, 1, 2, 3, 4}
--
-- @param array; Array to modify
-- @param: value; Value to fill first element of Array with
-- @return array
_.enqueue = function (array, value)
    return table.insert(array, 1, value)
end
