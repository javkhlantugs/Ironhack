class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
    def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @wordspermin = (@word_count * 60 / 275).round(2)
    array = @text.split(" ")
    @counts = Hash.new(0)
    array.each {|word| @counts[word] += 1}
    sorted = @counts.sort_by {|word, repeat| repeat}
    @final = sorted.reverse
    @finalfinal = @final.slice(0..9)
    render 'results'
  	end
end
