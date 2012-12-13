class Admin::CommentsController < ApplicationController
	before_filter :authorize

	layout "administration"

  def index
  end
  
  def create
  	
  end
end
