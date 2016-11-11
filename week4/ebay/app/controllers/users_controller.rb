class UsersController < ApplicationController	
	def show
		@the_user = User.find(params[:id])
		@products = @the_user.products
		render 'show'
	end

	def create
		@a_user = User.create!(
			:username => params[:user][:username],
			:email => params[:user][:email])
		redirect_to "/users/#{@a_user.id}"
	end

	def destroy
	end

	def new
		@a_user = User.new
		render 'new'
	end

	
end
