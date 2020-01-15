-- _.zipObject.lua
--
-- The inverse of _.pairs; this method returns an object composed from
-- arrays of property names and values. Provide either a single two dimensional 
-- array, e.g. [[key1, value1], [key2, value2]] or two arrays, one of
-- property names and one of corresponding values.
-- @usage _.print(_.zipObject({{'fred', 30}, {'alex', 20}}))
-- --> {["alex"]=20, ["fred"]=30}
-- _.print(_.zipObject({'fred', 'alex'}, {30, 20}))
-- --> {["alex"]=20, ["fred"]=30}
--
-- @param ... The properties/values
-- @return Returns the new object.
_.zipObject = function (...)
    local tmp = _.table(...)
    local t = {}
    if #tmp == 1 then
        for i, pair in ipairs(tmp[1]) do
            t[pair[1]] = pair[2]
        end
    else
        for i = 1, #tmp[1] do
            t[tmp[1][i]] = tmp[2][i]
        end
    end
    return t
end
