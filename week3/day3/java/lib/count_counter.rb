class CountryCounter
	def count_countries(country, array)
 counter = 0
 array.each do |x|
 if x == country
 	counter += 1
 end
 end
 counter
end
end