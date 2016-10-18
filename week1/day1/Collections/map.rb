heroes_array = ["Batman", "Green Lantern", "Superman", "Cyborg","aquaman"]
lowercase_array = heroes_array.map do |hero|
	hero.downcase
end

length_array = heroes_array.map do |x|
	x.length
end

puts "ORIGINAL ARRAY"
puts "--------"
puts heroes_array
puts ""
puts ""

puts "NEW ARRAy"
puts "--------"
puts lowercase_array
puts ""
puts ""


puts length_array


cities = ["miami", "memphis", "barcelona", "new york"]
capitalized = cities.map do |x|
	puts x.capitalize
end
