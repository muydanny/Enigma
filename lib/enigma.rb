require_relative "./offset"
require_relative "./decoder"

class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    offset = Offset.new(key, date)
    decoded = Decoder.new(message, offset)
    {
      encryption: decoded.message,
      key: key,
      date: date
    }
  end
end
