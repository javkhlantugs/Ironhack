class StringCalculator
	def add (x = 0)
		if x == 0
			return 0
		end
		array = []
		array = x.split(",")
		array_integer = []
		array.each do |x|
			array_integer.push(x.to_i)
			end
		answer = array_integer.reduce(:+)
		answer
	end
end
