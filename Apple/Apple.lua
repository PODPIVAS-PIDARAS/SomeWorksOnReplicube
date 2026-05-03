local rx_base = 5
local ry_base = 6
local rz_base = 4


local cx = 0
local cy = 0
local cz = 0

local tt = t or 0

local phase = tt % 32
local k = phase / 31      -- k идёт от 0 до ~1

local min_scale = 1.0
local max_scale = 2.0
local scale = min_scale + (max_scale - min_scale) * k

local rx = rx_base * scale
local ry = ry_base * scale
local rz = rz_base * scale

local dx = x - cx
local dy = y - cy
local dz = z - cz

local ex = dx * dx / (rx * rx)
local ey = dy * dy / (ry * ry)
local ez = dz * dz / (rz * rz)

if ex + ey + ez <= 1 then
  if dy > ry * 0.5 and dx * dx + dz * dz < 4 then
    return 1
  end

  return 7
end

if x == cx and z == cz and y >= cy + ry and y <= cy + ry + 3 then
  return 15
end


if y >= cy + ry and y <= cy + ry + 2 and
   z == cz and
   x >= cx + 1 and x <= cx + 3 then
  return 11
end