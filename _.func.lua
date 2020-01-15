-- _.func.lua
--
-- Cast parameters to a function that return passed parameters. 
-- @usage local f = _.func(1, 2, 3)
-- _.print(f())
-- --> 1    2   3
--
-- @param value value to cast
-- @param ... The parameters to pass to any detected function
-- @return casted value
_.func = function (...)
    local t = _.table(...)
    return function ()
        return _.args(t)
    end
end
