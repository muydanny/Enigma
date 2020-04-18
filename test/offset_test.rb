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

  def test_it_has_attributes
    assert_equal 1672401025, @offset.squared
    assert_equal 1025, @offset.last_four_digits
  end

end
