class Offset

  def initialize(date)
    @date = date
  end

  def squared
    @date.to_i ** 2
  end

  def last_four_digits
    require "pry"; binding.pry
    squared.digits.reverse[-1..-4]
  end
end
