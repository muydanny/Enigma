require_relative "./key"
require_relative "./offset"

class Encoder

  def initialize(message, letter_offset)
    @message = message
    @letter_offset = letter_offset
  end

# find current index of character
# find first key in letter offset (A B C D key)
# add current offset and index
# take number move forward that many spaces
# rotate with ! and without

  def message
    @message.split("").map do |character|
      require "pry"; binding.pry
    end
  end

  def character_set
    ("a".."z").to_a << " "
  end
end
