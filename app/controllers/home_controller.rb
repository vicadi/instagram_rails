class HomeController < ApplicationController
  def index
  	@data = session[:data]
  	if @data
  		@instagram = Instagram.user_recent_media(@data["uid"])
  	end
  end
end