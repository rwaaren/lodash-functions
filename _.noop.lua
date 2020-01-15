-- _.noop.lua
--
-- A no-operation function that returns nil regardless of the arguments
-- it receives.
-- @usage local object = {x=5}
-- _.print(_.noop(object) == nil);
-- --> true
--
-- @param ... Any arguments
-- @return Returns nil
_.noop = function(...) 
    return nil 
end
