class Admin::ArticlesController < ApplicationController

	before_filter :authorize

	def index
	end

end