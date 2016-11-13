class SiteController < ApplicationController
	def index
		@concerts = Ticketmaster.order(created_at: :desc)
		render 'home'
	end
end
