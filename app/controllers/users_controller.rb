class UsersController < ApplicationController
	def create
		@user = User.new(params[:user])

		if @user.save
			view_context.create_inventory_and_items(@user)
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
