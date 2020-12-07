# NUMBERS = %w(zero one two three four five six seven eight nine ten eleven
#              twelve thirteen fourteen fifthteen sixteen seventeen eighteen
#              nineteen)

# def alphabetic_number_sort(arr)
#   arr.sort_by! { |num| NUMBERS[num] }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# further exlploration

# Array#sort_by! mutates the callers so we used the Enumerable#sort_by so that the sorted return value is placed a new array.

NUMBERS_WORDS = %w(zero one two three four five six seven eight nine ten eleven
             twelve thirteen fourteen fifthteen sixteen seventeen eighteen
             nineteen)

def alphabetic_number_sort(arr)
  arr.sort do |a, b|
    NUMBERS_WORDS[a] <=> NUMBERS_WORDS[b]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
