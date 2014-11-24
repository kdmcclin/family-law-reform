class UsersController < ApplicationController
	before_action :get_user, only: [:show, :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
      		session[:user_id] = @user.id
      		flash[:login_message] = "Success!"
      		redirect_to '/'
    	else
      		flash[:signin_error] = @user.errors.full_messages
      		redirect_to '/login'
    	end
	end

	def destroy
    	@user.delete
    	session[:user_id] = nil
    	redirect_to '/'
  	end

  	private

  	def get_user
  		@user = User.find(params[:id])
  	end

  	def user_params
  		params.require(:user).permit(:displayname, :email, :password)
  	end
end