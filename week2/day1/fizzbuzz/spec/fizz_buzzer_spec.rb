require_relative ("../lib/fizz_buzzer.rb")
RSpec.describe FizzBuzz do 
	describe "fizz_buzz" do
		fizz = FizzBuzz.new
		it "returns string of the input number" do
			expect(fizz.fizz_buzz(7)).to eq ("7")
			expect(fizz.fizz_buzz(11)).to eq ("11")
		end
		it " return fizz for every number divisible by 3" do
			expect(fizz.fizz_buzz(9)).to eq ("Fizz")
			expect(fizz.fizz_buzz(12)).to eq ("Fizz")
		end
		it "return Buzz for every number divisible by 5" do
			expect(fizz.fizz_buzz(10)).to eq ("Buzz")
			expect(fizz.fizz_buzz(25)).to eq ("Buzz")
		end
		it "return FizzBuzz for number divisible by 5 and 3" do
			expect(fizz.fizz_buzz(15)).to eq ("FizzBuzz")
			expect(fizz.fizz_buzz(30)).to eq ("FizzBuzz")
		end

	end
end