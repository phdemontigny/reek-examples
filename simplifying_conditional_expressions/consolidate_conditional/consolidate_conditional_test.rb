require 'test/unit'
require_relative 'consolidate_conditional'

class ConsolidateConditionalTest < Test::Unit::TestCase
  include ConsolidateConditional

  def test_raindrops
    assert_equal("Pling", raindrops(12))
    assert_equal("Plang", raindrops(20))
    assert_equal("Plong", raindrops(28))
    assert_equal("PlingPlang", raindrops(15))
    assert_equal("PlingPlong", raindrops(21))
    assert_equal("PlangPlong", raindrops(35))
    assert_equal("PlingPlangPlong", raindrops(105))
    assert_equal("34", raindrops(34))
  end

  def test_raindrops_fixed
    assert_equal("Pling", raindrops_fixed(12))
    assert_equal("Plang", raindrops_fixed(20))
    assert_equal("Plong", raindrops_fixed(28))
    assert_equal("PlingPlang", raindrops_fixed(15))
    assert_equal("PlingPlong", raindrops_fixed(21))
    assert_equal("PlangPlong", raindrops_fixed(35))
    assert_equal("PlingPlangPlong", raindrops_fixed(105))
    assert_equal("34", raindrops_fixed(34))
  end
end
