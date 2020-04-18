require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/decoder'

class DecoderTest < Minitest::Test
  def setup
    @decoder = Decoder.new
  end

  def test_it_exists
    assert_instance_of Decoder, @decoder
  end
end
