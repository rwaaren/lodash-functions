-- _.inRange.lua
--
--- Number
-- @section Number
-- Checks if n is between start and up to but not including, end. 
-- If end is not specified it’s set to start with start then set to 0.
-- @usage print(_.inRange(-3, -4, 8))
-- --> true
--
-- @param n The number to check.
-- @param start The start of the range.
-- @param stop The end of the range.
-- @return Returns true if n is in the range, else false.
_.inRange = function (n, start, stop)
    local _start = _.isNil(stop) and 0 or start or 0
    local _stop = _.isNil(stop) and start or stop or 1
    return n >= _start and n < _stop
end
