

local cx = 0
local cy = 0
local cz = 0

local dx = x - cx
local dy = y - cy
local dz = z - cz

local tt = t or 0


local r = abs(dx) + abs(dy) + abs(dz)

local ringFreq = 0.5

local timeSpeed = 0.3


local wave = r * ringFreq + tt * timeSpeed

local stripe = wave % 2

if stripe < 1 then
    return WHITE  -- 1
else
    return BLACK  -- 3
end