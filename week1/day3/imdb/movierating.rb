require "imdb"
require_relative("movie_list.rb")
require_relative("movie_info.rb")

# class MovieRater
# 	attr_reader :title, :rating
# 	def initialize
# 		@title = nil
# 		@rating = nil
# 	end
# 	def moviesearch(array)
# 	File.open("movies.txt") do |movie|

# 	movie.each_line do |line|
# 		array.push(line)
# 			end
# 		end
# 	end
# def results
# movies_array.each do |movie|
# 	i = Imdb::Search.new(movie)
# 	first_result = i.movies[0]
# 	first_result.title = @title
# 	first_result.rating = @rating
# 	end
# end
# end
# movies_array = []
# movies = MovieRater.new
# movies.moviesearch(movies_array)
empirical_array = []
movie_info = []


create_movie_list(empirical_array)
create_list(empirical_array, movie_info)

puts empirical_array
puts movie_info[0][:title]
puts movie_info[0][:rating]


current = 0
ratingnumba = 8
x = 1
for x in 1..9
	while current < movie_info.length
		if movie_info[current][:rating] > ratingnumba
			if current == movie_info.length - 1 
				puts "|x|"
			else
			print "|x"
			end
		else 
			if current == movie_info.length - 1
				puts "| |"
				else
				print "| "
			end
		end
	current += 1
	end
	ratingnumba -= 1
end
