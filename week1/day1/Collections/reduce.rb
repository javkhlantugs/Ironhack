heroes_array = ["Batman", "Green Lantern", "Superman", "Cyborg","aquaman"]
 total_length = 0 
 heroes_array.each do |x|
 	total_length += x.length
 end
  puts total_length.to_f / heroes_array.length
  puts ""
  puts ""
  puts ""
  puts "-----------"

  total_length = heroes_array.reduce(0) do |sum, x|
  	sum + x.length
  end

puts ""
puts ""

puts "FINAL RESULT: #{total_length}"
puts "average: #{total_length.to_f / heroes_array.length}"
