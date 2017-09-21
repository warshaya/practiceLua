local test = require 'u-test'
require 'permutations'

-- tests for appendnext( a )

test.appendnext_sizeOne_ReturnsTwo = function ()
  local a = {1}
  appendnext( a )
  test.equal( a[1], 1 )
  test.equal( a[2], 2 )
end

test.appendnext_sizeTwo_ReturnsThree = function()
  local a = {1,2}
  appendnext( a )
  test.equal( a[1],1 )
  test.equal( a[2],2 )
  test.equal( a[3],3 )
  test.equal( a[4],nil )
end

-- tests for appendnexttoall( a )

test.appendnexttoall_sizeTwo_returnsThreeForAll = function()
  local a = {{1,2},{2,1}}
  appendnexttoall( a )
  test.equal( #a[1],3 )
  test.equal( #a[2],3 )
  test.equal( a[1][3],3 )
  test.equal( a[2][3],3 )
end

-- tests for shiftvector( a )

test.shiftvector_sizeThree_shiftsallForward = function()
  local a = {1,2,3}
  b = shiftvector( a ) -- should result in {2,3,1}
  test.equal( b[1], a[2] )
  test.equal( b[2], a[3] )
  test.equal( b[3], a[1] )
end

-- tests for clone( table )

test.clonetable_modifyclone_firstisunmodified = function()
  local a = {1,2,3}
  local b = table.clone( a )
  b[1] = 0
  test.equal( a[1], 1 )
end

-- tests for generatepermutations( n )

test.generatepermutations_zero_returnsnil = function()
  local a = generatepermutations( 0 )
  test.is_nil( a )
end

test.generatepermutations_one_returnsOne = function()
  local a = generatepermutations( 1 )
  test.equal( a[1], 1 )
  test.equal( a[2], nil )
end

test.generatepermutations_two_returnsthem = function()
  local a = generatepermutations( 2 ) -- should result in {{1,2}, {2,1}}
  test.equal( a[1][1],1 )
  test.equal( a[1][2],2 )
  test.equal( a[2][1],2 )
  test.equal( a[2][2],1 )
end

test.generatepermutations_three_returnsthem = function()
  local a = generatepermutations( 3 )
  test.equal( a[1][1], 1 )
  test.equal( a[1][2], 2 )
  test.equal( a[1][3], 3 )
  test.equal( a[2][1], 2 )
  test.equal( a[2][2], 1 )
  test.equal( a[2][3], 3 )
  test.equal( a[3][1], 2 )
  test.equal( a[3][2], 3 )
  test.equal( a[3][3], 1 )
  test.equal( a[4][1], 3 )
  test.equal( a[4][2], 1 )
  test.equal( a[4][3], 2 )
  test.equal( a[5][1], 1 )
  test.equal( a[5][2], 3 )
  test.equal( a[5][3], 2 )
  test.equal( a[6][1], 3 )
  test.equal( a[6][2], 2 )
  test.equal( a[6][3], 1 )
end

test.generatepermutations_four_hasFourFactorialElements = function()
  local a = generatepermutations( 4 )
  test.equal( #a, 24 )
end

test.generatepermutations_five_hasFiveFactorialelements = function()
  local a = generatepermutations( 5 )
  test.equal( #a, 120 )
end


















