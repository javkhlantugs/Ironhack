require "date"

class Post
	attr_accessor(:title, :date, :text)

	def initialize(title, text)
		@title = title
		@date = Time.now
		@text = text
		#@sponsored = sponsored
	end
end