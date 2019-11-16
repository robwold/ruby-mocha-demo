require 'test_helper'
require 'minitest/autorun'
require 'weight_change_calculator'
require 'mocha/minitest'

class WeightChangeCalculatorTest < Minitest::Test
  def setup
    UserWeightDao.stubs(get_previous_weight: 80)
    UserWeightDao.stubs(save_user_weight: nil)
  end

  def test_calculates_weight_change
    expected = 5
    actual = WeightChangeCalculator.determine_user_weight_change(1, 85)
    assert_equal expected, actual
  end

  def test_saves_new_weight
    UserWeightDao.expects(:save_user_weight).with(1, 85)
    WeightChangeCalculator.determine_user_weight_change(1, 85)
  end
end