require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt_without_date
    expected = {encryption: "keder ohulw", key: "02715"}
    assert_equal expected , @enigma.encrypt("hello world", "02715")
  end

  # def test_it_can_encrypt
  #   expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
  #   assert_equal expected , @enigma.encrypt("hello world", "02715", "040895")
  # end
  #
  # def test_it_can_decrypt_without_date
  #   expected = {encryption: "hello world", key: "02715", date: Time.now.strftime("%d%m%y")}
  #   assert_equal expected , @enigma.decrypt("keder ohulw", "02715")
  # end
  #
  # def test_it_can_decrypt
  #   expected = {decryption: "hello world", key: "02715", date: "040895"}
  #   assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  # end
end
