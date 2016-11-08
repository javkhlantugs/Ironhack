class ContactsController < ApplicationController
	def index
		@contacts = JayContact.order(created_at: :ASC)
		render 'index'
	end
	def home
		render 'home'
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

    render(:text => contact.attributes)
	end


end
