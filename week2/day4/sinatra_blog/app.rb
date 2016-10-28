require "sinatra"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"
blog = Blog.new
today = Post.new("my first article", "blah blah blah")
tomorrow = Post.new("my second article", "bluh bluh bluh")
blog.add_post(today)
blog.add_post(tomorrow)

get "/" do 
	@posts = blog.posts
	erb(:home)
end

get "/post_details/:id" do
	number = params[:id].to_i
	@post = blog.posts[number]
	erb(:post_details)
end

get "/new_post" do
	end
	