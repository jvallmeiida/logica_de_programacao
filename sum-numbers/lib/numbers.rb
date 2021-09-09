class Numbers
  def sum_text(numbers_text)
    numbers = numbers_text.split
    integers = numbers.map { |int| int.to_i }

    integers.inject { |sum,e| sum += e }
  end
end
