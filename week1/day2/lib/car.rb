class Car
	def initialize (name, sound)
		@name = name
		@sound = sound
	end

	def enginerev
		puts "#{@name} goes #{@sound}"
	end

	def self.blah
		puts "blah blah"
	end
		
end
