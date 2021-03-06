class Admin::UsersController < ApplicationController

	layout "application"

	def login

		if request.post?
			#user = User.authenticate(params[:user][:username], params[:user][:password])
			#if user
			#	session[:user_id] = user.id
			#	redirect_to :controller => "articles", :action => "index"
			#else
			#	flash.now[:error]  = "Login unsuccessful"
			#end
			session[:user_id] = 1
			redirect_to :controller => "articles", :action => "index"
		end
	end

	def logout
		session[:user_id] = nil
		flash[:notice]  = "Logout successful"
		redirect_to :action => "login"
	end
end
