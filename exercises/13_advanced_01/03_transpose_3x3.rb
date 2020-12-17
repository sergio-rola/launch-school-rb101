def transpose(matrix)
  result = []
  (0...matrix.size).each do |column_index|
    new_row = []
    (0...matrix.size).each do |row_index|
      new_row << matrix[row_index][column_index]
    end
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
