class SessionsController < ApplicationController
	include SessionsHelper
	
	def create
		user = User.where(username: params[:session][:username]).first
		#if user && user.authenticate(params[:session][:password])
		if user == nil
			flash.now[:error] = 'Please enter your username and password'
			render new_session_path
		elsif user.password == params[:session][:password]
			# Sign the user in and redirect to the user's show page.
			session[:current_user_id] = user.id
			sign_in user
			redirect_to intro_path
		else
			# Create an error message and re-render the signin form.
			flash.now[:error] = 'Invalid email/password combination'
			render new_session_path
		end
	end
end
