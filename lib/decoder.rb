class Decoder

  attr_reader :message,
              :letter_offset

  def initialize(message, letter_offset)
    @message = message
    @letter_offset = letter_offset
  end

  def decode_message
    possible_keys = [:A, :B, :C,:D]
    @message.split("").map do |character|
      character_index = character_set.find_index(character)
      key = possible_keys.first
      possible_keys.rotate!
      decrypt_character(character_index - @letter_offset[key])
    end.join
  end

  def decrypt_character(offset)
    character_set.rotate(offset).first
  end

  def character_set
    ("a".."z").to_a << " "
  end

end
