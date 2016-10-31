require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative "lib/movies.rb"


the_movie = Movies.new

get "/" do
	erb :home
end

post "/search_results" do 
	the_search = Imdb::Search.new(params[:userinput])
	@movies = the_search.movies
	@refined_movies = @movies[0..14]
	the_movie.add_movies(@refined_movies)
	@posters = the_movie.search_for_poster
	@sliced = @posters.slice(0, 8)
	@poster_years = @sliced.map do |movie|
		movie.year
	end
	@random_year = @sliced.sample
	erb :results
end