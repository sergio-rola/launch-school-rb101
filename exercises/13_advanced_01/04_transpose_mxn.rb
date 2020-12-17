def transpose(matrix)
  result = []
  rows = matrix.size
  columns = matrix.first.size
  (0...columns).each do |column_index|
    new_row = []
    (0...rows).each do |row_index|
      new_row << matrix[row_index][column_index]
    end
    result << new_row
  end
  result
end

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]
