-- _.args.lua
--
--- Lang
-- @section Lang
-- Cast value to arguments
-- @usage print(_.args({1, 2, 3}))
-- --> 1    2   3
--
-- @param value value to cast
-- @return Returns arguments
_.args = function (value)
    if _.isTable(value) then return table.unpack(value) 
    else return table.unpack({value})
    end
end
