class CommentsController < ApplicationController
	def new
		@theConcert = Ticketmaster.find(params[:ticketmaster_id])
		@comment = @theConcert.comments.new
		render 'new'
	end

	def create
		@theConcert = Ticketmaster.find(params[:ticketmaster_id])
		@comment = @theConcert.comments.new(
			name: params[:comment][:name],
			content: params[:comment][:content])
		
		if @comment.save
			redirect_to ticketmaster_path(@theConcert)
		else
			render 'new'
		end

	end
end
