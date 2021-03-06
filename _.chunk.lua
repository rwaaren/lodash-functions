-- _.chunk.lua
--
--- Array <h1 id="_chunk">_chunk</h1>
-- @section Array
-- Creates an array of elements split into groups the length of size. 
-- If collection can�t be split evenly, the final chunk will be the 
-- remaining elements.
-- @usage local t = _.chunk({'x', 'y', 'z', 1, 2, 3, 4, true , false}, 4)
-- _.print(t)
-- --> {{"x", "y", "z", 1}, {2, 3, 4, true}, {false}}
-- 
-- @param array The array to process.
-- @param[opt=1] size The length of each chunk.
-- @return the new array containing chunks.
_.chunk = function (array, size)
    local t = {}
    local size = size == 0 and 1 or size or 1
    local c, i = 1, 1
    while true do   
        t[i] = {}
        for j = 1, size do
            _.push(t[i], array[c])
            c = c + 1
        end
        if _.gt(c, #array) then
            break
        end
        i = i + 1
    end
    return t
end
