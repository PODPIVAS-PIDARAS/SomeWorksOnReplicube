local cx = 0
local cy = 0
local cz = 0


local dx = x - cx
local dy = y - cy
local dz = z - cz
local tt = t or 0


local line = dx + dz

local spaceFreq = 0.5

local timeSpeed = 0.3

local wave = line * spaceFreq + tt * timeSpeed

local idx = wave % 8


if idx < 1 then
    return RED
elseif idx < 2 then
    return ORANGE
elseif idx < 3 then
    return YELLOW
elseif idx < 4 then
    return GREEN
elseif idx < 5 then
    return CYAN
elseif idx < 6 then
    return BLUE
elseif idx < 7 then
    return PURPLE
else
    return PINK
end


if y >= cy + ry and y <= cy + ry + 2 and
   z == cz and
   x >= cx + 1 and x <= cx + 3 then
  return 11
end