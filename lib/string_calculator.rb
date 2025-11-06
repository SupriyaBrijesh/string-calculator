class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    # numbers.to_i
    # nums = numbers.split(",").map(&:to_i) # Two comma-separated numbers
    # nums = numbers.split(/,|\n/).map(&:to_i) # any numbers along with newline char b/w nubers

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_spec, numbers = numbers.split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(delimiter_spec[2..]))
    end

    nums = numbers.split(delimiter).map(&:to_i) # supports custom delimiter syntax like //;\n1;2

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end
