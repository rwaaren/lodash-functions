-- _.invert.lua
--
-- Creates an object composed of the inverted keys and values of object. 
-- If object contains duplicate values, subsequent values overwrite 
-- property assignments of previous values unless multiValue is true.
-- @usage _.print(_.invert({a='1', b='2', c='3', d='3'}))
-- --> {[2]="b", [3]="d", [1]="a"}
-- _.print(_.invert({a='1', b='2', c='3', d='3'}, true))
-- --> {[2]="b", [3]={"c", "d"}, [1]="a"}
--
-- @param object The object to invert.
-- @param multiValue Allow multiple values per key.
-- @return Returns the new inverted object.
_.invert = function (object, multiValue)
    local t = {}
    for k, v in _.iter(object) do
        if multiValue and not _.isNil(t[v]) then
            t[v] = { t[v] }
            _.push(t[v], k)            
        else
            t[v] = k 
        end
    end
    return t
    
end
