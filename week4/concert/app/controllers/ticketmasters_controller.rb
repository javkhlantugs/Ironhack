class TicketmastersController < ApplicationController
	def show
		@theConcert = Ticketmaster.find(params[:id])
		@name = @theConcert.artist
		render 'show'
	end

	def new
		@theConcert = Ticketmaster.new
		render 'new'
	end

	def create
		@concert = Ticketmaster.create!(
			:artist => params[:ticketmaster][:artist],
			:venue => params[:ticketmaster][:venue],
			:city => params[:ticketmaster][:city],
			:datetime => params[:ticketmaster][:datetime],
			:price => params[:ticketmaster][:price],
			:description => params[:ticketmaster][:description])
		redirect_to "/ticketmasters/#{@concert.id}"
	end

	def destroy
		sth = Ticketmaster.find(params[:id])
		sth.destroy
		redirect_to site_path
	end
end
