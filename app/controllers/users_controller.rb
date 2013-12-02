class UsersController < ApplicationController
	def create
		@user = User.create(params[:user])
		
		if @user.save
			redirect_to root_url, alert: "User created!"
		end
		
		if @user.errors.any?
			render 'new'
		end


	end
	
	private
	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
