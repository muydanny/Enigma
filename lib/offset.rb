class Offset

  def initialize(date)
    @date = date
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
