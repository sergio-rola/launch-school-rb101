def rotate_array(arr)
  rotation = []

  (1..(arr.size - 1)).each { |idx| rotation << arr[idx] }

  rotation << arr[0]
  rotation
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# further exploration - integers

def rotate_integer(integers)
  arr_integers = integers.digits.reverse
  arr_integers = arr_integers[1..-1] << arr_integers[0]
  arr_integers.map { |integer| integer.to_s }.join.to_i
end

rotate_integer(735291) == 352917

# further exploration - string

def rotate_string(str)
  str[1..-1] + str[0]
end

rotate_string("Mute") == "uteM"

# further exploration - integers using rotate method
def rotate_integer(integers)
  rotate_array(integers.digits.reverse).map(&:to_s).join.to_i
end

rotate_integer(735291) == 352917

# further exploration - string using rotate method

def rotate_string(str)
  rotate_array(str.chars).join
end

rotate_string("Mute") == "uteM"
