-- _.ary.lua
--
-- Creates a function that accepts up to n arguments ignoring any 
-- additional arguments.
-- @usage local printOnly3 =_.ary(print, 3)
-- printOnly3(1, 2, 3, 'x', 'y', 6)
-- --> 1    2   3
--
-- @param func The function to cap arguments for.
-- @param n the arity cap.
-- @return Returns the new function
_.ary = function(func, n)
    return function(...)
        if n == 1 then
            return func((...))
        else
            local t = _.table(...)
            local first = _.take(t, n)
            return func(_.args(first))
        end
    end
end
