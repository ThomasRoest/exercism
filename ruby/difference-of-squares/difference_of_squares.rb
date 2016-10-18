class Squares
  def initialize(num)
    @num = num
    @numbers = (1..@num).to_a
  end

  def square_of_sum
    @numbers.inject(:+)**2
  end

  def sum_of_squares
    @numbers.inject(0){|tot, num| tot + num ** 2}
  end

  def difference
     @num > 0 ? square_of_sum - sum_of_squares : 0
  end
end

p Squares.new(2).difference