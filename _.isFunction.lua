-- _.isFunction.lua
--
-- Checks if value is classified as a function primitive.
-- @usage _.print(_.isFunction(function() end))
-- --> true
-- _.print(_.isFunction(1))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isFunction = function(value)
    return type(value) == 'function'
end
