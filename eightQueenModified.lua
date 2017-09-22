N = 8 -- board size

found = 0
count = 0

-- check whether position (n,c) is free from attacks
function isplaceok ( a, n, c )
  for i = 1, n - 1 do  -- for each queen already placed
    if ( a[i] == c ) or           -- same column?
       ( a[i] - i == c - n ) or   -- same diagonal?
       ( a[i] + i == c + n ) then -- same diagonal?
      return false     -- place can be attacked
    end
  end
  return true          -- no attacks; place is ok
end

-- print a board
function printsolution ( a )
  for i = 1, N do      -- for each row
    for j = 1, N do    -- for each columns
      -- write "X" or "-" plus a space
      io.write( a[i] == j and "X" or "-", " " )
    end
    io.write( "\n" )
  end
  io.write( "\n" )
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen ( a, n )
  if n > N then    -- all queens have been placed?
    printsolution(a)
    found = 1
  else -- try to place n-th queen
    for c = 1, N do
        count = count + 1
--      if (found ~= 1) then
        if isplaceok(a, n, c) then
          a[n] = c -- place n-th queen at column 'c'
          addqueen(a, n + 1)
        end
--      end
    end
  end
end

-- run the program
addqueen( {}, 1 )
print ("count 'inplaceof' this many times:", count)

count2 = 0

function checkall( a )
  for k,m in pairs( a ) do
    for i = 1,N do
      count2 = count2 + 1
      sentinel = isplaceok( m, i, m[i])
      if ( not sentinel) then
        break
      end
      if (i == N and sentinel ) then
        printsolution( m )
      end
    end
  end
end

require 'permutations'

b = generatepermutations( 8 )

checkall( b )

print ("count 'inplaceof' this many times:", count2)


    









