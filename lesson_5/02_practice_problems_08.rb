hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |array|
  array.each do |str|
    str.chars.each do |char|
      puts char if "aeiou".include?(char)
    end
  end
end
