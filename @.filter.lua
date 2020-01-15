-- @.filter.lua
--
@.filter = function(collection, predicate, selfArg, reject)
    local t = {}
    for k, v in _.iter(collection) do
        local check = callIteratee(predicate, selfArg, v, k, collection)
        if reject then 
            if not check then
                _.push(t, v)
            end     
        else
            if check then
                _.push(t, v)
            end         
        end         
    end
    return t
end
