class SessionsController < ApplicationController
	def new
	end
	
	def create
		user = User.where(username: params[:session][:username]).first
		#if user && user.authenticate(params[:session][:password])
		if user.password == params[:session][:password]
			# Sign the user in and redirect to the user's show page.
			sign_in user
			redirect_to home_url
		else
			# Create an error message and re-render the signin form.
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end
	
	def destroy
	end
end
