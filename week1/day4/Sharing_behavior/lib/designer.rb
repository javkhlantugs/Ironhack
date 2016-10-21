require_relative("payable.rb")
require_relative ("caffiene_consumer.rb")
class Designer 
	include CaffieneConsumer
	include Payable
	def design_things
		puts "consume_caffiene"
		puts "select_typography"
		puts "select_colors"
	end

	def select_typography
		puts "draw with alphabets"
	end
	def select_colors
		puts "selecting colors"
	end
end