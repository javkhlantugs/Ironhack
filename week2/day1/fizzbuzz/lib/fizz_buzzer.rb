class FizzBuzz
	def fizz_buzz(x)
		if x % 3 == 0 && x % 5 == 0
			"FizzBuzz"
		elsif x % 5 == 0
			"Buzz"
		elsif x % 3 == 0
			"Fizz"
		else
			x.to_s
		end
	end
end