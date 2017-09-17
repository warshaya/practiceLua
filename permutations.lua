print( "Hello, world!" )

function func1 ()
   print( "func1 was called!" )
end

function printdata( a )
  for i = 1, #a  do
    io.write( a[i], " " )
  end
  io.write( "\n")
end

function generatepermutations( n )
  return {1,2,3,4,5,6,7,8}
end

func1()
a = generatepermutations( 8 )
print( a )
printdata (a)





print( "Goodbye, world!" )
