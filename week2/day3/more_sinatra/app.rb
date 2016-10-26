require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
get "/" do 
	erb(:home)
end

get "/hi" do
	erb(:hipage)
end

get "/about" do
	erb(:about)
end


get "/best_pizza" do
	@toppings = ["pepperoni", "sausage", "spinach"]
	erb(:best_pizza)
end

get "/log" do
	erb (:login)
end