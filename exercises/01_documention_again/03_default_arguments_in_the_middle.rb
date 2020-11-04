# 03_default_arguments_in_the_middle.rb

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) #=> [4, 5, 3, 6]

# https://ruby-doc.org/core-2.5.3/doc/syntax/calling_methods_rdoc.html
