-- _.once.lua
--
-- Creates a function that is restricted to invoking func once. Repeat
-- calls to the function return the value of the first call. The func
-- is invoked with arguments of the created function.
-- @usage local createApp = function(version)
--     print('App created with version '..version)
--     return version
-- end
-- local initialize = _.once(createApp)
-- initialize(1.1)
-- initialize(1.1)
-- initialize(1.1)
-- --> App created with version 1.1
-- --> 1.1
-- --> 1.1
-- --> 1.1
--
-- @param func The function to restrict.
-- @return Returns the new function.
_.once = function (func)
    local called = false; 
    local result
    return function(...)
        if not called then
            result = func(...)
            called = true            
        end
        return result
    end
end
