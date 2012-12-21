class Admin::CommentsController < ApplicationController
	
	before_filter :authorize

	layout "administration"

  def index
  	@comments = Comment.all
  end
  
  def delete
  	comment = Comment.find(params[:id])
    
    if comment.destroy
      flash[:notice] = "Delete comment successful"
    else
      comment[:error] = "Delete comment failed"
    end

    redirect_to :action => "index"
  end

end
