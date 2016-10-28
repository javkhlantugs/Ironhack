require_relative("../lib/blog.rb")

RSpec.describe Blog do 
	before(:each) do
		@blog = Blog.new
	end

	it ("post returns list of posts") do
		expect(@blog.posts).to eq([])
	end
	it "should return posts in chronological order" do
		c = Post.new("title", "text")
		b = Post.new("lsls", "text")
		a = Post.new("titlshde", "textshde")
		@blog.add_post(b)
		@blog.add_post(c)
		@blog.add_post(a)
		expect(@blog.latest_posts[0].text).to eq(a.text)
	end
end