local phase = x + y + z
local period = 32
local offset = t % period
local thickness = 2
local pos = (phase + offset) % period
if pos <= thickness or pos >= period - thickness then
    
    return 7 + (y % 3)
else
    return 0
end