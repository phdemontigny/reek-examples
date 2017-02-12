module ExtractVariable
  def difference_of_squares(num)
    (num*(num+1)/2)**2 - (1..num).to_a.map { |n| n**2 }.sum
  end

  def difference_of_squares_fixed(num)
    square_of_sum = (num*(num+1)/2)**2
    sum_of_squares = (1..num).to_a.map { |n| n**2 }.sum
    square_of_sum - sum_of_squares
  end
end
