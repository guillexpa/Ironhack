#EACH

classmates = ["guille", "pau", "escalitche"]
classmates = %w(guille pau escalitche) # metodo alternativo para definir un array de strings

classmates.each do |students|
  puts "good morning #{students}"
end

#MAP

cities = ["miami", "madrid", "barcelona"]

capital_cities = cities.map do |cities|
  cities.capitalize
end

#pretty_cities = cities.map {|city| city.capitalize}

puts capital_cities

#REDUCE

sum = cities.reduce(0) { |sum, city| sum + city.length}

puts sum / cities.length
