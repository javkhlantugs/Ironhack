class SiteController < ApplicationController
	def index
		@all_users = User.order(created_at: :desc)
	render 'index'
	end	
end
