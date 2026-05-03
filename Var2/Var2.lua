local dx = x - 8
local dy = y - 8
local dz = z - 8
local dist_sq = dx*dx + dy*dy + dz*dz
local pulse = (t % 10) 
local radius_sq = (pulse + 2)
if dist_sq < (radius_sq * 2) then
    return 11
else
    return 0
end