require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new("02715")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_has_keys
    assert_equal 02, @keys[:A]
    assert_equal 27, @keys[:B]
    assert_equal 71, @keys[:C]
    assert_equal 15, @keys[:D]
  end

  def test_it_can_generate_random_key
    key = Key.new.key
    assert key.to_i > 0
    assert_equal 5, key.length
  end
end
