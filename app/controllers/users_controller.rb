class UsersController < ApplicationController
	def new
	end
	
	def create
		@user = User.new(params[:user])
		@user.save
		flash[:alert] = "You are not yet assigned to an experiment."
		
		if @user.save
			redirect_to home_url, alert: "User created!"
		end
		
		if @user.errors.any?
			render 'new'
		end
	end

	def login
		#@user = User.find_by username: params[]
	end
	
	private
	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
