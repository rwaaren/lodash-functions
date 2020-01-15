-- _.table.lua
--
-- Cast parameters to table using table.pack
-- @usage print(_.table(1, 2, 3))
-- --> {1, 2, 3}
-- print(_.table("123"))
-- --> {"123"}
-- print(_.table(0))
-- --> {0}
--
-- @param value value to cast
-- @param ... The parameters to pass to any detected function
-- @return casted value
_.table = function (...)
    return table.pack(...)
end
