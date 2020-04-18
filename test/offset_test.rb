require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/offset'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new("040895")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_can_square_numeric_date
    assert_equal 1672401025, @offset.squared
  end

  def test_it_can_get_last_four_digits
    assert_equal 1025, @offset.last_four_digits
  end

  def test_it_can_get_offsets
    assert_equal 1, @date.a_offset
    assert_equal 0, @date.b_offset
    assert_equal 2, @date.c_offset
    assert_equal 5, @date.d_offset
  end
end
