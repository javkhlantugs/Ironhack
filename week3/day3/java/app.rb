require_relative ("lib/count_counter.rb")

countries = ["Puerto Rico", "USA", "Nicaragua","France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
contree = ["Puerto Rico","Puerto Rico", "USA", "USA", "USA", "Nicaragua", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
country_thing = CountryCounter.new

countries.each do |x|
	puts x
end
	
puts ""

uppercase_countries = countries.map do |a_country|
a_country.upcase
end

puts "COUNTRIES REPPED IN THIS ROOM"
puts "---------"

uppercase_countries.each do |x|
	puts "From #{x}"	
end

puts country_thing.count_countries("USA", contree)