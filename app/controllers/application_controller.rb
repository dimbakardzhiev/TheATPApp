class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def redirect_if_not_found
  	logger.error "Attempt to access non-existent #{request.controller_class} #{params[:id]}"
  	redirect_to("/linecharts")
  end

	# Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end