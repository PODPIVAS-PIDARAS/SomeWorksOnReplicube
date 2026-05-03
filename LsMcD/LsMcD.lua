local period = 32
local t32 = t % period
local bar_spacing = 4
local bar_index = (x + 16) / bar_spacing  
local nearest_bar = bar_index
if nearest_bar >= 0 then
    nearest_bar = nearest_bar - (nearest_bar % 1)
else
    nearest_bar = nearest_bar - (nearest_bar % 1) - 1
end
local bar_x = nearest_bar * bar_spacing - 16
if x < bar_x - 1 or x > bar_x + 1 then
    return 0
end
local idx = nearest_bar
local phase = (t32 + idx * 4) % period
local half = period / 2
local ramp
if phase < half then
    ramp = phase          -- 0..15
else
    ramp = period - 1 - phase  -- 15..0
end
local max_height = 12
local height = (ramp * max_height) / (half - 1)
local base_y = -16
local top_y = base_y + height
if y >= base_y and y <= top_y then
    
    local base_color = 4 + ((idx + z) % 4)
    return base_color
else
    return 0
end