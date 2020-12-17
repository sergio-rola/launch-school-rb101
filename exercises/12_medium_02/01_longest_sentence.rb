require 'open-uri'

txt = File.read("01_longest_sentence.txt")
frankenstein_txt = URI.open('https://www.gutenberg.org/cache/epub/84/pg84.txt').read

def longest_sentence(txt)
  sentences = txt.split /[.?!]/
  sentences.map! do |sentence|
  count = sentence.split(" ").size
    {sentence: sentence.strip, word_count: count}
  end

  longest_sentence = sentences.max { |a, b| a[:word_count] <=> b[:word_count] }

  puts "The longest sentence is: #{longest_sentence[:sentence]}"
  puts
  puts "The number of words in the longest sentence is #{longest_sentence[:word_count]}."
end

longest_sentence(txt)
longest_sentence(frankenstein_txt)

# further exploration - find longest word

require 'open-uri'

txt = File.read("01_longest_sentence.txt")
frankenstein_txt = URI.open('https://www.gutenberg.org/cache/epub/84/pg84.txt').read

def longest_word(txt)
  longest_word = txt.split.max_by { |word| word.size }
  longest_word_count = longest_word.size

  puts "The longest word is \"#{longest_word}\" and it has #{longest_word_count} characters."
end

longest_word(txt)
longest_word(frankenstein_txt)

# further exploration - find longest paragraph

txt = File.read("01_longest_sentence.txt")

def longest_paragraph(txt)
  longest_paragraph = txt.split(/\n\n/).max_by {|paragraph| paragraph.size}
  longest_paragraph_word_count = longest_paragraph.split.size

  puts "The longest longest_paragraph is: \"#{longest_paragraph}\""
  puts "It has #{longest_paragraph_word_count} words."

end

longest_paragraph(txt)
