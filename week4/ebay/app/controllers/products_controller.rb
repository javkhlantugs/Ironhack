class ProductsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@products = @user.products
	end
	def all
		@allproducts = Product.new
		render 'all'
	end

	def new
		@a_user = User.find(params[:user_id])
		@newproduct = @a_user.products.new
	end
	def show
	end

	def create
		@user = User.find(params[:user_id])
		@new = @user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline])
		@new.save!
		redirect_to user_products_path(@user)
	end

	def destroy
	end
end
