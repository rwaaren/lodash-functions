-- _.print.lua
--
-- Print more readable representation of arguments using _.str 
-- @usage _.print({1, 2, 3, 4, {k=2, {'x', 'y'}}})
-- --> {1, 2, 3, 4, {{"x", "y"}, [k]=2}}
--
-- @param ... values to print
-- @return Return human readable string of the value
_.print = function(...)
    local t = _.table(...)
    for i, v in ipairs(t) do 
        t[i] = _.str(t[i])
    end
    return print(_.args(t))
end
