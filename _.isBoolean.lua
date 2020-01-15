-- _.isBoolean.lua
--
-- Checks if value is classified as a boolean primitive.
-- @usage _.print(_.isBoolean(false))
-- --> true
-- _.print(_.isBoolean('x'))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isBoolean = function(value)
    return type(value) == 'boolean'
end
