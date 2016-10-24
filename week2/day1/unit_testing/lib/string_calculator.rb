class StringCalculator
	def add (x = nil)
		if x == nil || x == ""
			return 0
		else
			array = []
			array = x.split(",")
			array_integer = []
			array_new = []
			array.each do |x|
			array_integer.push(x.to_i)
			end
			answer = array_integer.reduce(:+)
			answer
		end
	end
end
