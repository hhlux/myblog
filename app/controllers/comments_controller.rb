class CommentsController < ApplicationController
  
  def create
  	
  	comment = Comment.new(params[:comment])

  	comment.save
  	
  	redirect_to :controller => "articles", :action => "view", :id => comment.article_id
  end
end