local dist_sq = x*x + y*y + z*z
local max_radius_sq = 768
local step = t % 32
local factor = step / 31
local radius_sq = max_radius_sq * factor
if dist_sq <= radius_sq then
    return 6  
else
    return 3   
end