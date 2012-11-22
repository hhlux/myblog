class ApplicationController < ActionController::Base
	protect_from_forgery

	def authorize
		unless session[:user_id]
			flash[:notice] = "Please log in"
			redirect_to(:controller => "admin/users", :action => "login")
		end
	end
end
