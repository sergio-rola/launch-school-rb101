def sequence(num)
  (1..num).each_with_object([]) {| num, arr| arr << num}
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]


# further exploration

# up to one including negative values

def sequence(num)
  num <= 0 ? (num..1).to_a : (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1, 0, 1]
p sequence(-3) == [-3, -2, -1, 0, 1]
p sequence(-1) == [-1, 0, 1]
p sequence(0) == [0, 1]
