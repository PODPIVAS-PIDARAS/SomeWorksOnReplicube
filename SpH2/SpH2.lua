local period = 32
local t32 = t % period
local radius = 12
local r2 = radius * radius
local dist_sq = x*x + y*y + z*z
local shell_thickness = 6
if dist_sq < r2 - shell_thickness or dist_sq > r2 + shell_thickness then
   
    return 0
end
local noise = (x * 13 + y * 17 + z * 19 + t32 * 11) % 16
local threshold = 8
if noise > threshold then
    return 0
end
local shell_pos = r2 + shell_thickness - dist_sq
if shell_pos < 0 then shell_pos = 0 end
if shell_pos > shell_thickness then shell_pos = shell_thickness end
local factor = shell_pos / shell_thickness  -- 0..1
local color
if factor > 0.66 then
    color = 9
elseif factor > 0.33 then
    color = 8
else
    color = 7
end
if ((y + t32) % 6) == 0 then
    color = 3  
end

return color