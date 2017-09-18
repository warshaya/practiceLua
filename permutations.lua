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
-- generatepermutations( n ) will generate all permutations of inteters 1 thru N
-- ]]
function generatepermutations( n )
  if ( n == 1 ) then
    return {1}
  end
  return {1,2,3,4,5,6,7,8}
end


-- begin scripting here

func1()
a = generatepermutations( 1 )
print( a )
printdata (a)


first = {1,2} -- append next digit
test = {}   -- initialize new set
test[1] = {first[1], first[2]} 
test[2] = {first[2], first[1]}


printdata (test[1])


print( "Goodbye, world!" )


