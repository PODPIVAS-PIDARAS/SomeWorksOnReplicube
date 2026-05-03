local radius = 12
local dist_sq = x*x + y*y + z*z
local inside_sphere = (dist_sq <= radius*radius)
local period = 32
local t32 = t % period
local x_norm = x + 16  -- -16..16 -> 0..32
if x_norm < 0 then x_norm = 0 end
if x_norm > 31 then x_norm = 31 end
local thickness = 2
local diff = x_norm - t32
if diff > period / 2 then
    diff = diff - period
elseif diff < -period / 2 then
    diff = diff + period
end
if inside_sphere and diff >= -thickness and diff <= thickness then
    local base = 6
    local col = base + ((y + z) % 4)
    return col
elseif inside_sphere then
    
    return 4
else
    
    return 0
end