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
end
