def balanced?(str)
  counter = 0
  str.chars.each do |char|
    counter += 1 if char == ("(")
    counter -= 1 if char == (")")
    return false if counter < 0
  end

  counter.zero?
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

# further exploration

def balanced?(str)
  counters_brackets = Hash.new(0)
  counters_quotations = Hash.new(0)

  str.chars.each do |char|
    counters_brackets[:counter_curly] += 1 if char == ("(")
    counters_brackets[:counter_curly] -= 1 if char == (")")
    counters_brackets[:counter_square] += 1 if char == ("[")
    counters_brackets[:counter_square] -= 1 if char == ("]")
    counters_quotations[:counter_single] += 1 if char == ("'")
    counters_quotations[:counter_double] += 1 if char == ("\"")
    return false if counters_brackets.values.any?(&:negative?)
  end

  return false if counters_quotations.values.any?(&:odd?)
  counters_brackets.values.all?(&:zero?)
end

balanced?('What (is) [this?') == false
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What)[]"" (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('He\'y!\'') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
