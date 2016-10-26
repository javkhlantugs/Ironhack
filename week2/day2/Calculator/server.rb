require "sinatra"
require_relative ("lib/calculator.rb")
require_relative ("public/saved_results.rb")
my_array = []
get "/" do
	erb(:home)
end



post "/calculate" do
 	jays = Calculator.new(params[:numberone], params[:numbertwo]) 
if params[:operation] == "add" 
	@result = jays.add
	elsif params[:operation] == "divide"
	@result = jays.divide
 elsif params[:operation] == "multiply" 
	@result = jays.multiply
 elsif params[:operation] == "subtract"
	@result = jays.subtract
	end
	erb(:result)
end
post "/results" do
	my_array.push(params[:results])
end