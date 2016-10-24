class Lexiconomitron
	def eat_t (text)
		text.gsub("t", "")		
	end
	def reverse_words (array)
		no_t_array = array.map do |word|
			word.downcase.gsub("t", "")
		end
		reversed_array = no_t_array.map do |word|
			word.reverse
		end
		first_and_last = []
		first_and_last.push(reversed_array[0])
		first_and_last.push(reversed_array[-1])
		first_and_last
	end
	def three_letters (array)
		no_t_array = array.map do |word|
			word.downcase.gsub("t", "")
		end
		three_array = []
			no_t_array.each do |word|
				if word.length <= 3
					three_array.push(word)
				end
			end
		three_array
	end

end
