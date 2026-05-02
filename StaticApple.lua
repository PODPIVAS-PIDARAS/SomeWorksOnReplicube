local rx = 5
local ry = 6
local rz = 4
local cx = 0
local cy = 0
local cz = 0
local dx = x - cx
local dy = y - cy
local dz = z - cz
local ex = dx * dx / (rx * rx)
local ey = dy * dy / (ry * ry)
local ez = dz * dz / (rz * rz)
if ex + ey + ez <= 1 then
  if dy > ry * 0.5 and dx * dx + dz * dz < 4 then
    return WHITE
  end
		return RED
end
if x == cx and z == cz and y >= cy + ry and y <= cy + ry + 3 then
  return BROWN
end
if y >= cy + ry and y <= cy + ry + 2 and
   z == cz and
   x >= cx + 1 and x <= cx + 3 then
  return GREEN
end