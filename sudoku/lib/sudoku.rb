class Sudoku
  def check(list)
  array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    list.each.with_index { |int, index| return false if index > 8 }

    array1.to_set == list.to_set
  end
end
