class SessionsController < ApplicationController

	def new
		render :new
	end

	def create
		user_maybe = User.find_by(email: params[:email])

		if user_maybe == nil || user_maybe.authenticate(params[:password]) == false
			redirect_to "/login"
		else
			session[:user_id] = user_maybe.id
			flash[:login_success] = "You have logged in successfully"
			redirect_to "/"
		end
	end

	def destroy
		session.clear
		redirect_to "/"
	end

end
