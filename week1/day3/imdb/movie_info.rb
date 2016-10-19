def create_movie_list (array)

	File.open("movies.txt") do |text|
	text.each_line do |line|
 		array.push(line)
 			end
 	end
end

def create_list (array, destination)
array.each do |movie|
 	i = Imdb::Search.new(movie)
 	first_result = i.movies[0]
 	title = first_result.title 
 	rating = first_result.rating 

 	destination.push({:title => title, :rating => rating})
 	end
 end
