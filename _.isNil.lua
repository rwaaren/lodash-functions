-- _.isNil.lua
--
-- Checks if value is classified as a nil primitive.
-- @usage _.print(_.isNil(variable)
-- --> true
-- variable = 1
-- _.print(_.isNil(variable))
-- --> false
--
-- @param value the value to check
-- @return Returns true if value is correctly classified, else false.
_.isNil = function(value)
    return type(value) == 'nil'
end
