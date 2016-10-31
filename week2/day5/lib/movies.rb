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
		posters = []
		posters = @list_of_movies.select do |movie|
			movie.poster != nil
		end
		posters
	end
	
end
