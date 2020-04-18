require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/decoder'
require './lib/encoder'

class EncoderTest < Minitest::Test
  def setup
    @encoder = Encoder.new
  end

  def test_it_exists
    assert_instance_of Encoder, @encoder
  end
end
