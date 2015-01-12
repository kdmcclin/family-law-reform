class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(email: session_params[:email]).try(:authenticate, session_params[:password])
		if @user
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:error] = "Login failed!"
			redirect_to login_path
		end
	end

	def destroy
		session.clear
		redirect_to root_path
	end

	private

	def session_params
		params.require(:session).permit(:email, :password)
	end
end