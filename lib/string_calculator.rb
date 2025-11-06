class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    # numbers.to_i
    # nums = numbers.split(",").map(&:to_i) # Two comma-separated numbers
    nums = numbers.split(/,|\n/).map(&:to_i) # any numbers along with newline char b/w nubers
    nums.sum
  end
end
