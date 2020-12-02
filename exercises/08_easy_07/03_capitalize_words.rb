def word_cap(str)
  str.split.map(&:capitalize).join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# further exploration 1

def word_cap(str)
  str.downcase.split.map { |word| word[0].upcase + word[1..-1]}.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# further exploration 2

def word_cap(str)
  capitalized = str.split.map do |word|
    word.chars.each.with_index do |char, idx|
      word[idx] = char.downcase if char.match(/[A-Z]/)
      word[0] = word[0].swapcase if word[0].match(/[a-z]/)
    end

    word
  end

  capitalized.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
