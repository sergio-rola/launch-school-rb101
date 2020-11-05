# 01_repeat_yourself.rb

def repeat(string, num)
  num.times { puts string }
end

repeat('Hello', 3)

# times {|i| block } → self
