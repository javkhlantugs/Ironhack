class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end
def printer (array)
	array.each do |home|
		puts "#{home.name} located in #{home.city}\nPrice: #{home.price}\nCapacity: #{home.capacity}"
	end
end

textbnb = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Jay's place" , "Coconut Grove", 1, 42),
  Home.new("Nary's place", "Coral", 2, 34),
  Home.new("Lorena's place", "Miami", 4, 50),
  Home.new("Mike's place", "Beverly", 2, 150),
  Home.new("Elliot's place", "Memphis", 1, 32)]

printer(textbnb)

puts "========************========"
def askfordirections(array)
puts "Would you like to sort by price or capacity?"
	text = gets.chomp
	
if text == "price"
	printer(array.sort_by {|home| home.price}.reverse)
elsif text == "capacity"
	printer(array.sort_by {|home| home.capacity}.reverse)
else
	puts "please type either price or capacity"
	askfordirections(array)
end
end
askfordirections(textbnb)
puts "========************========"
puts "Which city would you like to rent in?"
chosen_city = gets.chomp
new_array = textbnb.select do | x |
	x.city == chosen_city
end
printer(new_array)
puts "========************========"

total_price = new_array.reduce(0) do |sum, home|
	sum + home.price
end
puts "the average price is #{total_price / new_array.count}"

puts "========************========"
puts "Enter Desired price"
desired_price = gets.chomp

user_results = textbnb.find do |home|
	home.price == desired_price.to_i
	end
puts "#{user_results.name}"