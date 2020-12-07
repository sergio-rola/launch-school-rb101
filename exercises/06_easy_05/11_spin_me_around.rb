def spin_me(str)
  str.object_id # => 60
  str.split.object_id  # => 80

  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# It's a different object because when we split the string a new array object is created.

