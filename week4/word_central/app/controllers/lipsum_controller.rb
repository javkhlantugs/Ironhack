class LipsumController < ApplicationController
	def new
		render 'new'
	end

	def create
		@final = String.new
		@times = params[:user_input].to_i
		if params[:choice] == 'paragraph'
				 @final = "Lorizzle ipsizzle dolizzle sit amet, fo shizzle my nizzle adipiscing boofron. That's the shizzle sapien , that's the shizzle volutpizzle, suscipizzle for sure, dang vizzle, ghetto. Pellentesque shiznit tortor. Sed erizzle. Bow wow wow black dolizzle dapibizzle turpis tempizzle for sure. Maurizzle pellentesque nibh et turpis. Sheezy izzle tortizzle. Nizzle eleifend rhoncizzle . In hac habitasse dang dictumst. Donec dapibizzle. Fo shizzle my nizzle tellus urna, pretizzle , gizzle ac, break it down vitae, fo shizzle. Fizzle suscipizzle. Own yo' sempizzle shit bow wow wow dizzle. "
		else
			# render plain: params[:user_input].class
				@final = "Lorizzle ipsizzle dolizzle sit amet, fo shizzle my nizzle adipiscing boofron. "
		end
		@final
	end
	
end
