--[[
-- this function is used to generate randoms in a normal distribution around zero 
--]]
function randomnormalized ()
  return math.tan( (math.pi * math.random()) - math.pi/2 )
end

--[[
-- uncomment this to give a custom seed
--]]
--math.randomseed( os.time() )
