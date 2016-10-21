class WordCounter 
	def initialize (text)
		@text = text
	end

	def countit
		sentence_array = @text.split(" ")
		words = sentence_array.length
		puts "Your text has #{words} words"
	end
end

