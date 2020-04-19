require_relative "./offset"
require_relative "./decoder"
require_relative "./encoder"

class Enigma

  def initialize
  end

  def encrypt(message, key, date = Time.now.strftime("%d%m%y"))
    offset = Offset.new(key, date)
    encode = Encoder.new(message, offset.letter_offsets)
    {
      encryption: encode.encode_message,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date = Time.now.strftime("%d%m%y") )
    offset = Offset.new(key, date)
    decode = Decoder.new(ciphertext, offset.letter_offsets)
    {
      decryption: decode.decode_message,
      key: key,
      date: date
    }
  end
end
