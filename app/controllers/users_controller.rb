class UsersController < ApplicationController
	def create
		@user = User.create(params[:user])
		flash[:alert] = "You are not yet assigned to an experiment."
		redirect_to root_url, alert: "User created!"
	end
	
	private
	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
