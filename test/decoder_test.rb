require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/decoder'

class DecoderTest < Minitest::Test
  def setup
    @decoder = Decoder.new("keder ohulw", { :A => 3, :B => 27, :C => 73, :D => 20})
  end

  def test_it_exists
    assert_instance_of Decoder, @decoder
  end

  def test_it_has_attributes
    expected = { :A => 3, :B => 27, :C => 73, :D => 20}
    assert_equal "keder ohulw", @decoder.message
    assert_equal expected, @decoder.letter_offset
  end

  def test_it_has_a_character_set
    expected = "abcdefghijklmnopqrstuvwxyz ".split("")
    assert_equal expected, @decoder.character_set
  end

  def test_it_can_decode_message
    assert_equal "hello world", @decoder.decode_message
  end

  def test_it_can_offset_individual_character
    assert_equal "h", @decoder.decrypt_character(7)
  end
end
