require_relative ("word_counter.rb")
class User 
	def initialize (username, password)
		@username = username
		@password = password
	end
	
	def checker (nameinput, passinput)
		if @username == nameinput && @password = passinput
			puts "Please enter some text to count"
			text = gets.chomp
			sentence = WordCounter.new(text)
			sentence.countit
		else
			puts "Invalid username or password, bye!"
		end
	end
end

