-- _.random.lua
--
-- Produces a random number between min and max (inclusive). 
-- If only one argument is provided a number between 0 and the given 
-- number is returned. If floating is true, a floating-point number is
-- returned instead of an integer.
-- @usage _.print(_.random())
-- --> 1
-- _.print(_.random(5))
-- --> 3
-- _.print(_.random(5, 10, true))
-- --> 8.8120200577248
--
-- @param[opt=0] min the minimum possible value.
-- @param[opt=1] max the maximum possible value.
-- @param[opt=false] floating Specify returning a floating-point number.
-- @return Returns the random number.
_.random = function (min, max, floating)
    local minim = _.isNil(max) and 0 or min or 0
    local maxim = _.isNil(max) and min or max or 1
    math.randomseed(os.clock() * math.random(os.time()))
    local r = math.random(minim, maxim)
    if floating then
        r = r + math.random()
    end 
    return r
end
