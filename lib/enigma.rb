require_relative "./offset"
require_relative "./decoder"

class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    offset = Offset.new(key, date)
    encoded = Encoder.new(message, offset.letter_offsets)
    {
      encryption: decoded.message,
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date)
    offset = Offset.new(key, date)
    decoded = Decoder.new(message, offset)
    {
      decryption: decoded.message,
      key: key,
      date: date
    }
  end
end
