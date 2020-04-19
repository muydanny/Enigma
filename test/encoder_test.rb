require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/decoder'
require './lib/encoder'

class EncoderTest < Minitest::Test
  def setup
    @encoder = Encoder.new("hello world", { :A => 3, :B => 27, :C => 73, :D => 20})
  end

  def test_it_exists
    assert_instance_of Encoder, @encoder
  end

  def test_it_has_a_character_set
    expected = "abcdefghijklmnopqrstuvwxyz ".split("")
    assert_equal expected, @encoder.character_set
  end

  def test_it_can_translate_message
    assert_equal "keder ohulw", @encoder.message
  end

  def test_it_can_offset_individual_character
    assert_equal "k", @encoder.encrypt_character(10)
  end
end
