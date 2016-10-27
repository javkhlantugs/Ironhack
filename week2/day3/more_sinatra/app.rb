require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?

enable(:sessions)





get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to("/")
end

get "/" do 
	@drank = session[:beverage]
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