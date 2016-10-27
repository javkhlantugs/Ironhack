require_relative ("../lib/password_checker.rb")
RSpec.describe PasswordChecker do
	describe "checkpass" do
			before :each do
			@check = PasswordChecker.new
		end
		it "return true for valid password" do
			expect(@check.check_password("jay@gmail.com", "aB76*c#23jjjj3")).to eq(true)
		end
		it "return false for passwords shorter than 8 characters" do
			expect(@check.check_password("jay@gmail.com", "aB76*")).to eq false
		end
		it "return false for password without letter" do
			expect(@check.check_password("fdfdfdfd", ")9222393)933*")).to eq false
			expect(@check.check_password("jay@gmail.com", "1234567><..8712")).to eq false
		end
		it "return false for password without numbers" do
			expect(@check.check_password("sdfdfdf", "AdfdfBdf>,.")).to eq false
		end
		it "return false for password without symbols" do
			expect(@check.check_password("sdfdfdf", "AdfdfBdf1234")).to eq false

		end
		it "return false for password without UPPERCASE" do
		end
		it "return false for password without lowercase" do
		end
		it "return false for password containing name and email domain" do
		end
	end
end
