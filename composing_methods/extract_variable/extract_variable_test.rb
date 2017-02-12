require 'test/unit'
require_relative 'extract_variable'

class ExtractVariableTest < Test::Unit::TestCase
  include ExtractVariable

  def test_difference_of_squares
    assert_equal(0, difference_of_squares(0))
    assert_equal(2_640, difference_of_squares(10))
    assert_equal(25_164_150, difference_of_squares(100))
  end

  def test_difference_of_squares_fixed
    assert_equal(0, difference_of_squares_fixed(0))
    assert_equal(2_640, difference_of_squares_fixed(10))
    assert_equal(25_164_150, difference_of_squares_fixed(100))
  end
end
