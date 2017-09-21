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
  local value = a
  print( "all values:" )
  for i = 1, #value do
    io.write( "\nelement:\n" )
    printdata( value[i] )
  end
  print( "end listing values" )
end

--[[
-- clonetable makes a copy of a table so I can modify it without
-- changing the original (from lua-users.org/wiki/copytable)
--]]
function table.clone( a )
  return {table.unpack( a )}
end

--[[
-- generatepermutations( n ) will generate all permutations of 
-- inteters 1 thru N
-- ]]
function generatepermutations( n )
  if ( n <= 0 ) then
    return nil
  end
  local a = {1}
  if( n == 1 ) then
    return a
  end
  appendnext( a )
  a = {a,{}}
  a[2] = shiftvector( a[1] )
  return a
end

--[[
-- appendnext( a ) will take a vector and add the next number to it
--]]
function appendnext( a )
  local length = #a
  a[length+1] = length+1
--  return a
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
  local result = table.clone( a )
  local holdvalue = result[1]
  for i = 1, #result-1 do
    result[i] = result[i+1]
  end
  result[#result] = holdvalue
  return result
end

-- begin scripting here

func1()
_a = generatepermutations( 1 )
print( _a )
printdata (_a)



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













