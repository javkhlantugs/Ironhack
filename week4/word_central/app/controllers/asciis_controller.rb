class AsciisController < ApplicationController
	def new
		render 'new'
	end
	def create
		s = Artii::Base.new
		@text = s.asciify(params[:text_inspection][:user_text])
		render 'results'
	end
end
