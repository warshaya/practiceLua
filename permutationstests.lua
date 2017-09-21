local test = require 'u-test'
require 'permutations'

-- tests for appendnext( a )

test.appendnext_sizeOne_ReturnsTwo = function ()
  a = {1}
  appendnext( a )
  test.equal( a[1], 1 )
  test.equal( a[2], 2 )
end

test.appendnext_sizeTwo_ReturnsThree = function()
  a = {1,2}
  appendnext( a )
  test.equal( a[1],1 )
  test.equal( a[2],2 )
  test.equal( a[3],3 )
  test.equal( a[4],nil )
end

-- tests for appendnexttoall( a )

test.appendnexttoall_sizeTwo_returnsThreeForAll = function()
  a = {{1,2},{2,1}}
  appendnexttoall( a )
  test.equal( #a[1],3 )
  test.equal( #a[2],3 )
  test.equal( a[1][3],3 )
  test.equal( a[2][3],3 )
end

-- tests for shiftvector( a )

test.shiftvector_sizeThree_shiftsallForward = function()
  a = {1,2,3}
  shiftvector( a ) -- should result in {2,3,1}
  test.equal( a[1], 2 )
  test.equal( a[2], 3 )
  test.equal( a[3], 1 )
end

-- tests for generatepermutations( n )

test.generatepermutations_zero_returnsnil = function()
  a = generatpermutations
  test.equal( a, nil )
end

test.generatepermutations_one_returnsOne = function()
  a = generatepermutations( 1 )
  test.equal( a[1], 1 )
  test.equal( a[2], nil )
end

test.generatepermutations_two_returnsthem = function()
  a = generatepermuations( 2 ) -- should result in {{1,2}, {2,1}}
  test.equal( a[1][1],1 )
  test.equal( a[1][2],2 )
  test.equal( a[2][1],2 )
  test.equal( a[2][2],1 )
end




