require "sinatra"
require_relative ("lib/calculator.rb")
require_relative ("public/saved_results.rb")
my_array = []
get "/" do
	erb(:home)
end



post "/calculate" do
	erb(:calculate)
end

post "/results" do
	my_array.push(params[:results])
end