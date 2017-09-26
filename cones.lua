-- some functions for cones


--[[
-- this function computes the volume of a right-circular cone, given its height and angle of apex
--]]
function volrccone (h, theta)
  return h * (h * math.tan(theta))^2 * math.pi / 3
end
