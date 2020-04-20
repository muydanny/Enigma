require_relative "./key"

class Offset

  def initialize(key, date)
    @date = date
    @key = Key.new(key)
  end

  def letter_offsets
    date_key = last_four_digits
    {
      :A => @key.key_offset[:A] + date_key.digits.reverse[0],
      :B => @key.key_offset[:B] + date_key.digits.reverse[1],
      :C => @key.key_offset[:C] + date_key.digits.reverse[2],
      :D => @key.key_offset[:D] + date_key.digits.reverse[3]
    }
  end

  def squared
    @date.to_i ** 2
  end

  def last_four_digits
    squared.digits.reverse[-4..-1].join.to_i
  end

# offset.new = {
# a_offset: 1,
# b_offset: 0,
# c_offset: 2,
# d_offset: 5
# }

end
