require 'minitest/autorun'
require 'minitest/pride'
require 'timecop'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}
    assert_equal expected , @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_encrypt_without_date
    Timecop.freeze(Time.local(2020,4,19))
    todays_date = Time.now.strftime("%d%m%y")
    encrypted_message = "pib wdmczpu"
    original_message = "hello world"
    expected = {encryption: encrypted_message, key: "02715", date: todays_date}
    assert_equal expected , @enigma.encrypt(original_message, "02715")
  end

  def test_it_can_decrypt
    expected = {decryption: "hello world", key: "02715", date: "040895"}
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
  
  def test_it_can_decrypt_without_date
    todays_date = Time.now.strftime("%d%m%y")
    original_message = "hello world"
    encrypted = @enigma.encrypt(original_message, "02715")
    expected = {decryption: original_message, key: "02715", date: todays_date}
    assert_equal expected , @enigma.decrypt(encrypted[:encryption], "02715")
  end

end
