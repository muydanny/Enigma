require_relative './test_helper'
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
    assert_equal 02, @key.key_offset[:A]
    assert_equal 27, @key.key_offset[:B]
    assert_equal 71, @key.key_offset[:C]
    assert_equal 15, @key.key_offset[:D]
  end

  def test_it_can_generate_random_key
    key = Key.new.key
    assert key.to_i > 0
    assert_equal 5, key.length
  end
end
