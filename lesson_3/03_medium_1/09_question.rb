def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo) #=> "no"
# the foo method will always return "yes"
# "yes" is then passed as an argument to the bar method
# "yes" == "no" evaluates to false so "no" is returned.
