-- _.flatten.lua
--
-- Flattens a nested array. 
-- If isDeep is true the array is recursively flattened, otherwise 
-- it’s only flattened a single level.
-- @usage _.print(_.flatten({1, 2, {3, 4, {5, 6}}}))
-- --> {1, 2, 3, 4, {5, 6}}
-- _.print(_.flatten({1, 2, {3, 4, {5, 6}}}, true))
-- --> {1, 2, 3, 4, 5, 6}
--
-- @param array The array to flatten.
-- @param isDeep Specify a deep flatten
-- @return Returns the new flattened array.
_.flatten = function(array, isDeep)
    local t = {}
    for k, v in ipairs(array) do
        if _.isTable(v) then
            local childeren
            if isDeep then
                childeren = _.flatten(v)
            else
                childeren = v               
            end
            for k2, v2 in ipairs(childeren) do
                _.push(t, v2) 
            end
        else
            _.push(t, v)
        end
    end
    return t
end
