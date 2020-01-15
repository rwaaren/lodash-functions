-- _.isTable.lua
--
-- Checks if value is classified as a table primitive.
-- @usage _.print(_.isTable({'1'}))
-- --> true
-- _.print(_.isString(1))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isTable = function(value)
    return type(value) == 'table'
end
