print( "Hello, world!" )

-- define functions here

--[[
-- func1() is a function prototype
-- ]]
function func1 ()
   print( "func1 was called!" )
end

--[[
-- printdata( a ) takes a vector and prints its contents in a line
-- ]]
function printdata( a )
  for i = 1, #a  do
    io.write( a[i], " " )
  end
  io.write( "\n")
end

--[[
-- printalldata will loop through a metatable
--]]
function printalldata( a )
  print( "all values:" )
  for i = 1, #a do
    io.write( "\nelement:\n" )
    printdata( a[i] )
  end
  print( "end listing values" )
end


--[[
-- generatepermutations( n ) will generate all permutations of 
-- inteters 1 thru N
-- ]]
function generatepermutations( n )
  if ( n == 1 ) then
    return {1}
  end
  return {1,2,3,4,5,6,7,8}
end

--[[
-- appendnext( a ) will take a vector and add the next number to it
--]]
function appendnext( a )
  local length = #a
  a[length+1] = length+1
  return a
end

--[[
-- given a whole set of vectors, appendnexttoall( a ) will appendnext to
-- each item in it
--]]
function appendnexttoall( a )
  for i = 1, #a do
    appendnext( a[i] )
  end
end

--[[ 
-- given a vector, shiftvector( a ) will shift all elements forward 
-- by one index, and move the first value to the end
--]]
function shiftvector( a )
  local holdvalue = a[1]
  for i = 1, #a-1 do
    a[i] = a[i+1]
  end
  a[#a] = holdvalue
end

-- begin scripting here

func1()
a = generatepermutations( 1 )
print( a )
printdata (a)



first = {1,2} -- append next digit
test = {}   -- initialize new set
--[[
test[1] = {first[1], first[2]} 
test[2] = {first[2], first[1]}

printalldata( test )
--]]
sizeOfTest = #test
print( sizeOfTest )
nextElement = #test + 1
print( nextElement)

testVector = {1,2}
printdata( testVector)
moveToBack = testVector[1]
testVector[1] = testVector[2]
testVector[2] = moveToBack
printdata( testVector )










print( "Goodbye, world!" )













