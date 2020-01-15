-- _.isString.lua
--
-- Checks if value is classified as a string primitive.
-- @usage _.print(_.isString('1'))
-- --> true
-- _.print(_.isString(1))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isString = function(value)
    return type(value) == 'string'
end
