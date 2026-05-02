

local tt = t or 0

local cx = 0
local cz = 0


local dx = x - cx
local dz = z - cz


local freq = 0.4   
local speed = 0.2  
local amp   = 3.0  

local h = sin((dx + dz) * freq + tt * speed) * amp   

local baseY = 6

if y < baseY or y > baseY + amp then
    return
end

local thickness = 1.0

if abs(y - (baseY + h)) <= thickness then

    local phase = (h / amp) * 0.5 + 0.5   
    local idx = floor(phase * 15)

    if idx == 0 then
        return 1        -- 1
    elseif idx == 1 then
        return 2          -- 2
    elseif idx == 2 then
        return 4       -- 4
    elseif idx == 3 then
        return 5       -- 5
    elseif idx == 4 then
        return 6        -- 6
    elseif idx == 5 then
        return 7         -- 7
    elseif idx == 6 then
        return 8         -- 8
    elseif idx == 7 then
        return 9       -- 9
    elseif idx == 8 then
        return 10         -- 10
    elseif idx == 9 then
        return 11        -- 11
    elseif idx == 10 then
        return 12     -- 12
    elseif idx == 11 then
        return 13    -- 13
    elseif idx == 12 then
        return 14    -- 14
    elseif idx == 13 then
        return 15      -- 15
    else -- 14,15
        return 16         -- 16
    end
end