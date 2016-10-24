require_relative ("../lib/the_lexi.rb")
RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
  	before :each do
  	@lexi = Lexiconomitron.new
  	end
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
    it "reverses individual words in array" do 
    	expect(@lexi.reverse_words(["This", "is", "a", "boring", "test"])).to eq (["sih", "se"])
    end
    it "choose words with 3 letters or less" do
    	expect(@lexi.three_letters(["if", "you", "wanna", "be", "my", "lover"])).to eq ["if", "you", "be", "my"]
    end

  end
end