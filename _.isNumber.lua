-- _.isNumber.lua
--
-- Checks if value is classified as a number primitive.
-- @usage _.print(_.isNumber(1))
-- --> true
-- _.print(_.isNumber('1'))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isNumber = function(value)
    return type(value) == 'number'
end
