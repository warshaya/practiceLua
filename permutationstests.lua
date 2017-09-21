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










