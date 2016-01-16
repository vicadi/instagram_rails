class HomeController < ApplicationController
  def index
  	@data = session[:data]
  end
end