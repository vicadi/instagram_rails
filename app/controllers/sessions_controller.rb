class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		session[:data] = env["omniauth.auth"]
		redirect_to root_url
	end

	def destroy
		session[:user_id] = nil
		session[:data] = nil 
		redirect_to root_url, :notice => "Signed out!"
	end 
end
