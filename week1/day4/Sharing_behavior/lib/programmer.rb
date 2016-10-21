require_relative ("payable.rb")
require_relative ("caffiene_consumer.rb")
class Programmer
	include CaffieneConsumer
	include Payable
	def program
		puts "programs the shit out"
	end

	def do_wonderful_things_with_computers
		puts "playing video games"
	end
end
