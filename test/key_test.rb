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
    assert_equal 02, @key.a_key
    assert_equal 27, @key.b_key
    assert_equal 71, @key.c_key
    assert_equal 15, @key.d_key
  end
end
