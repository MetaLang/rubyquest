class SessionsController < ApplicationController
	include SessionsHelper
	
	def create
		user = User.where(username: params[:session][:username]).first
		#if user && user.authenticate(params[:session][:password])
		if user == nil
			flash.now[:error] = 'Please enter your username and password'
			render 'sessions/new'
		elsif user.password == params[:session][:password]
			# Sign the user in and redirect to the user's show page.
			sign_in user
			redirect_to '/static_pages/intro'
		else
			# Create an error message and re-render the signin form.
			flash.now[:error] = 'Invalid email/password combination'
			render 'sessions/new'
		end
	end
end
