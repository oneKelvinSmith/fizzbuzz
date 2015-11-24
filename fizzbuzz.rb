class Fixnum
  alias_method :super_to_s, :to_s

  def to_s
    return 'FizzBuzz' if divisible_by(3) && divisible_by(5)
    return 'Buzz' if divisible_by 5
    return 'Fizz' if divisible_by 3
    super_to_s
  end

  def divisible_by(number)
    to_i % number == 0
  end
end
