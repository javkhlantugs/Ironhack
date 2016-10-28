require_relative("../lib/post.rb")

RSpec. describe Post do 
	before(:each) do
		@post1 = Post.new("tiitle", "teext")
		@post2 = Post.new("tiitle", "teext")
	end

	it("title returns title") do 
		expect(@post1.title).to eq "tiitle"
	end

	it("return date ") do
		expect(@post1.date).to be_within(0.1).of Time.now
	end
	it("return text") do
		expect(@post1.text).to eq "teext"
	end
end
