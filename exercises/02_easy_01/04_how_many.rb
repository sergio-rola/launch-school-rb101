# 04_how_many.rb

def count_occurrences(vehicles_name)
  occurrences = Hash.new(0)
  vehicles_name.each { |vehicle| occurrences[vehicle] += 1 }

  occurrences.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# further exploration

def count_occurrences(vehicles_name)
  occurrences = Hash.new(0)
  vehicles_name.each { |vehicle| occurrences[vehicle.downcase] += 1 }

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'moTorcycle', 'car', 'tRuck', 'suv'
]

count_occurrences(vehicles)
