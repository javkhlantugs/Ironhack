class ContactsController < ApplicationController
	def index
		@contacts = JayContact.order(created_at: :ASC)
		render 'index'
	end

	def new
		render 'new'
	end

	def create
    # Create new Contact from params[:contact]
    contact = JayContact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],)
    contact.save

    redirect_to("/contacts")
	end
	def show
		@a_contact = JayContact.find(params[:id])
		render 'show'
	end

end
