class Squares
  @num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..@num).reduce(:+)**2
  end

  def sum_of_squares
    (0..@num).reduce { |memo, n| memo + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
