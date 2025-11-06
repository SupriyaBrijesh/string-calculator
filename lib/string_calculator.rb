class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    # numbers.to_i
    nums = numbers.split(",").map(&:to_i) # Two comma-separated numbers
    nums.sum
  end
end
