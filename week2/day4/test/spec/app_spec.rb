require_relative "../app.rb"
require "rspec"
require "rack/test"

describe "My web app" do 
	include Rack::Test::Methods
	def app
		Sinatra::Application
	end
it "load the home page" do
	get "/"
	expect(last_response).to be_ok
end

it "should not load a page" do
	get "/home"
	expect(last_response).to_not be_ok
end

it "should load the /real_page" do
	get "/real_page"
end

it "should redirect from /hi to /real_page" do
	get "/hi"
expect(last_response.redirect?).to be(true)
follow_redirect!
expect(last_request.path).to eq("/real_page")
end
end