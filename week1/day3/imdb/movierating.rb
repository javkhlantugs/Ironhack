require "imdb"
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
y = 0
for x in 1..7
	puts movie_info[y][:title]
	puts movie_info[y][:rating]
	y += 1
end


current = 0
ratingnumba = 10
for x in 1..10
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
	current = 0
end
for number in 1..7
	if number < 7
		print "|#{number}"
	else
		puts "#{number}|"
end
end
