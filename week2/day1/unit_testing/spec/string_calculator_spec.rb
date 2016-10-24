require_relative("../lib/string_calculator.rb")
RSpec.describe StringCalculator do
	describe "add" do
		the_calc = StringCalculator.new
		it "adds 2 nubmers seperated by commas" do
			expect(the_calc.add("7,7")).to eq (14)
			expect(the_calc.add("8,4")).to eq (12)	
		end
		it "returns number for single number" do
			expect(the_calc.add("5")).to eq 5
			expect(the_calc.add("1")).to eq 1
		end
		it "return 0 for empty" do
			expect(the_calc.add("")).to eq 0
		end
		it "return 0 for no argument" do
			expect(the_calc.add).to eq 0
		end
	end
end