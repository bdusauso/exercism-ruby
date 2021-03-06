class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    @sum ||= 1.upto(number).reduce(:+) ** 2
  end

  def sum_of_squares
    @squares ||= 1.upto(number).map {|n| n ** 2}.reduce(:+)
  end

  def difference
    square_of_sums - sum_of_squares
  end
end