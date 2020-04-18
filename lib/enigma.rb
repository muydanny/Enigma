require_relative "./offset"
require_relative "./decoder"
require_relative "./encoder"

class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    offset = Offset.new(key, date)
    encoded = Encoder.new(message, offset.letter_offsets)
    {
      encryption: encoded.message,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date)
    offset = Offset.new(key, date)
    decoded = Decoder.new(ciphertext, offset)
    {
      decryption: decoded.message,
      key: key,
      date: date
    }
  end
end
