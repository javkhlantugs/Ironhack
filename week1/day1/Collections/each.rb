for x in 1..100
	puts x
end

heroes_array = ["Batman", "greenlantern", "Superman", "Cyborg","aquaman"]

 heroes_array.each do |hero| 
	puts hero.upcase
 	puts "Amount of characters #{hero.length}"
 	puts "-----"

end

classmates = ["Lorena", "Mike", "Nizar"]
classmates.each do |name|
	puts "Good Morning, #{name}"
end
