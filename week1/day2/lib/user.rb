class User
	attr_accessor (:age)
	def initialize (name, email, age, ethnicity, gender)
	@name = name
	@email = email
	@age = age
	@ethnicity = ethnicity
	@gender = gender
	end
	def login
		puts "#{@name} is logging in with #{@email}"

	end

	def greet
	 puts "Hello, my name is #{@name}"
	 puts " I'm #{@age} years old"
	end

end
