-- _.assign.lua
--
--- Object
-- @section Object
-- Assigns own enumerable string keyed properties of source objects
-- to the destination object. Source objects are applied from left
-- to right. Subsequent sources overwrite property assignments of
-- previous sources.
--
-- @usage _.print(_.assign({ a = 0 }, { a = 1 }, { b = 3 }))
-- --> { a = 1, b = 3 }
--
-- @param object The destination object
-- @param ... The source objects
-- @return Returns object
_.assign = function(object, ...)
  for index = 1, select('#', ...) do
    for k, v in pairs(select(index, ...)) do
      object[k] = v
    end
  end
  return object
end
