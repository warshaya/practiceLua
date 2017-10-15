--[[
-- this function is used to generate randoms 
-- in a standard normal distribution around zero 
--]]
function randomnormalized ()
  local xvalue = math.random()
  local sign = math.random(2)
  if ( sign == 1 ) then
    return invError(xvalue)
  else
    return -invError(xvalue)
  end
end

--[[
-- this function is the inverse of the standard normal distribution
-- on 0, 1/2
--]]
function f(x)
  return math.sqrt(-2*math.log(2*x))
end

--[[
-- this function is the 'inverse error function', from wikipedia.com
--]]
function invError(x)
  local a = 0.140012 --approximation
  local termA = ((2/(math.pi*a))+math.log(1-x^2)/2)^2 - math.log(1-x^2)/a
  local termB = 2/(math.pi*a) + math.log(1-x^2)/2
  return math.sqrt(math.sqrt(termA) - termB)
end



--[[
-- uncomment this to give a custom seed
--]]
--math.randomseed( os.time() )
