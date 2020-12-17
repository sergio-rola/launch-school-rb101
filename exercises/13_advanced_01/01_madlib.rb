ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)

txt = File.open('01_madlib.txt')

txt.each do |line|
  puts format(line, adjective: ADJECTIVES.sample,
                    noun: NOUNS.sample,
                    verb: VERBS.sample,
                    adverb: ADVERBS.sample)
end
