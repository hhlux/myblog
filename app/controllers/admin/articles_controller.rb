class Admin::ArticlesController < ApplicationController

	before_filter :authorize

	layout "administration"

	def index
	end

	def new
		if request.get?
			render "new"
		end
	end

end