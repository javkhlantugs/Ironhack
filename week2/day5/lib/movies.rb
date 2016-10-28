class Movies 
	attr_accessor :list_of_movies
	def initialize
		@list_of_movies = []
	end
	def add_movies(array)
		@list_of_movies = array.map do |x|
			x
		end
	end
	def search_for_poster
		posters = @list_of_movies.select do |movie|
			movie.poster != nil
		end
		posters.slice!(0..8)
	end
	def movie_name
		movie_names = @list_of_movies.map do |x|
			x.movies.name
		end
		new_array = movie_names.map do |movie|
			aarray = movie.split("(")
			aarray.delete_at(last)
			aarray.join
		end
		new_array
	end 
end


