print( "Hello, world!" )

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

func1()
a = generatepermutations( 1 )
print( a )
printdata (a)





print( "Goodbye, world!" )
