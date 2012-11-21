class UsersController < ApplicationController

	def login

		if request.post?
			current_user = User.authenticate(params[:user][:username], params[:user][:password])
			if current_user
				flash[:notice]  = "Login successful"
				redirect_to :controller => "admin", :action => "dashboard"
			else
				flash.now[:error]  = "Login failed"
			end
			
		end

	end

	def logout
	end
end
