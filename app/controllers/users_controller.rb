class UsersController < ApplicationController
	def create
		@user = User.create(params[:user])
		flash[:alert] = "You are not yet assigned to an experiment."
<<<<<<< HEAD
		
		if @user.save
			redirect_to home_url, alert: "User created!"
		end
		
		if @user.errors.any?
			render 'new'
		end
=======
		redirect_to root_url, alert: "User created!"
>>>>>>> 5c9a398f73dc47f09b2888401b3a5a0d2da7513a
	end
	
	private
	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
