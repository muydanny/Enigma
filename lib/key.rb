class Key

  attr_reader :keys

  def initialize(keys)
    @keys = keys
  end

  def a_key
    @keys[0..1].to_i
  end

  def b_key
    @keys[1..2].to_i
  end

  def c_key
    @keys[2..3].to_i
  end

  def d_key
    @keys[3..4].to_i
  end
end
