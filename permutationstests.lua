local test = require 'u-test'
require 'permutations'

-- tests for appendnext( a )

test.appendnext_sizeOne_ReturnsTwo = function ()
  a = {1}
  b = appendnext( a )
  test.equal( b[1], 1 )
  test.equal( b[2], 2 )
end

test.appendnext_sizeTwo_ReturnsThree = function()
  a = {1,2}
  b = appendnext( a )
  test.equal( b[1],1 )
  test.equal( b[2],2 )
  test.equal( b[3],3 )
  test.equal( b[4],nil )
end












