require_relative("../lib/blog.rb")

RSpec.describe Blog do 
	before(:each) do
		@blog = Blog.new
	end

	it ("post returns list of posts") do
		expect(@blog.posts).to eq([])
	end
end