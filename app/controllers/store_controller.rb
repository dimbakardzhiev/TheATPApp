class StoreController < ApplicationController
	before_action :logged_in_user, only: :index
	def index
		@products = Product.order(:name).paginate(page: params[:page], :per_page => 4)
		@store = @products
	end
end