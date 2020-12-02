def generate_UUID
  characters = []
  ('a'..'z').each { |char| characters << char }
  (0..9).each { |num| characters << num.to_s }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |num, idx|
    num.times { uuid += characters.sample }
    uuid += '-' unless idx >= sections.size - 1
  end

  uuid
end
