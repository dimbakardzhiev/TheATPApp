class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def redirect_if_not_found
  	logger.error "Attempt to access non-existent #{request.controller_class} #{params[:id]}"
  	redirect_to("/linecharts")
  end

end