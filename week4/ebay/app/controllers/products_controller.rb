class ProductsController < ApplicationController
	def index
		@all_products = Product.order(deadline: :desc)
	end

	def show
	end

	def create
	end

	def destroy
	end
end
