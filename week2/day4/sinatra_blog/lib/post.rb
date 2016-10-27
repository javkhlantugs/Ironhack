class Post
	attr_accessor(:title, :date, :text)

	def initialize(title, text)
		@title = title
		@date = Time.now
		@text = text
		#@sponsored = sponsored
	end

	def print
		puts @title
		puts "-----------------"
		puts @text
		puts ""
		puts "<=================>"
		puts ""
	end
end