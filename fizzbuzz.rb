class Fixnum
  alias_method :super_to_s, :to_s
  def to_s
    if super_to_s.to_i % 3 == 0
      'Fizz'
    elsif super_to_s.to_i % 5 == 0
      'Buzz'
    else
      super_to_s
    end
  end
end
