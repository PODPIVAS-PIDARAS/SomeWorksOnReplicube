local period = 32
local t32 = t % period
local radius = 10
local r2 = radius * radius
local dist_sq = x*x + y*y + z*z
local inside_sphere = (dist_sq <= r2)
local noise_global = (x * 13 + y * 17 + z * 19 + t32 * 7) % 12
local blink = (t32 * 3) % 12
local color_bg = 0
if noise_global < 4 then
    color_bg = 3       
elseif noise_global < 8 then
    color_bg = 7      
else
    color_bg = 0      
end
local color_obj = 0
if inside_sphere then
    
    local noise_inner = (x * 5 + y * 9 + z * 11 + t32 * 5) % 16

   
    if noise_inner < 4 then
        color_obj = 9   
    elseif noise_inner < 8 then
        color_obj = 8   
    elseif noise_inner < 12 then
        color_obj = 7   
    else
        color_obj = 3  
    end

    local pulse = (t32 % 8)
    if pulse > 4 and ((x + y + z) % 3) == 0 then
        color_obj = 0
    end
end
if inside_sphere then
    return color_obj
else
    return color_bg
end