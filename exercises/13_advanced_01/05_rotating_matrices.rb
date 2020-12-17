def rotate90(matrix)
  result = []
  columns = matrix[0].size
  rows = matrix.size
  (0...columns).each do |col_idx|
    new_rows = []
    (rows - 1).downto(0) do |row_idx|
      new_rows << matrix[row_idx][col_idx]
    end
    result << new_rows
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
new_matrix3 == matrix2

# further exploration

def rotate90(matrix)
  result = []
  columns = matrix[0].size
  rows = matrix.size
  (0...columns).each do |col_idx|
    new_rows = []
    (rows - 1).downto(0) do |row_idx|
      new_rows << matrix[row_idx][col_idx]
    end
    result << new_rows
  end
  result
end

def rotate180(matrix)
  result = matrix.map(&:reverse).reverse
end

def rotate(matrix, angle = 360)
  case angle
  when 360 then matrix
  when 270 then rotate180(rotate90(matrix))
  when 180 then rotate180(matrix)
  when 90 then rotate90(matrix)
  end
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p rotate(matrix1, 360) == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p rotate(matrix1, 270) == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p rotate(matrix1, 180) == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p rotate(matrix1, 90) == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
