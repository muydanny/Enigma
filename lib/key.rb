class Key

  attr_reader :keys,
              :a_key,
              :b_key,
              :c_key,
              :d_key

  def initialize(keys)
    @keys = keys
    @a_key = keys[0..1].to_i
    @b_key = keys[1..2].to_i
    @c_key = keys[2..3].to_i
    @d_key = keys[3..4].to_i
  end

end
