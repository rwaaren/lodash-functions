-- _.constant.lua
--
--- String
-- @section String
--- Utility
-- @section Utility
-- Creates a function that returns value.
-- @usage local object = {x=5}
-- local getter = _.constant(object)
-- _.print(getter() == object);
-- --> true
--
-- @param value Any value.
-- @return Returns the new function.
_.constant = function(value) 
    return _.func(value)
end
