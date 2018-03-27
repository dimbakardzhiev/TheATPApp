class StoreController < ApplicationController
	def index
		@products = Product.order(:name).paginate(page: params[:page], :per_page => 5)
		@store = @products
	end
end