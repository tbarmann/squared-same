require 'minitest/autorun'

def squared_same (a,b)
    if a.kind_of?(Array) && b.kind_of?(Array)
        a.sort.map{ |n| n * n} == b.sort
    else
        false
    end

end

class SquaredSameTest < MiniTest::Unit::TestCase
  def test_it
    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
    assert_equal true, squared_same(a, b), "Test 1"

    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
    assert_equal false, squared_same(a, b), "Test 2"

    a = []
    b = []
    assert_equal true, squared_same(a, b), "Test 3"

    a = []
    b = nil
    assert_equal false, squared_same(a, b), "Test 4"

    a = [121, 144, 19, 161, 19, 144, 19, 11, 1008]
    b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
    assert_equal false, squared_same(a, b), "Test 5"
  end
end
