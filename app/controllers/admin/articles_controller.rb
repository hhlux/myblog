class Admin::ArticlesController < ApplicationController

	before_filter :authorize

	layout "administration"

	def index
    @articles = Article.all
	end

	def new
		if request.get?
      @categories = Category.all
			render "new"

    elsif request.post?

      category = Category.find(params[:category_id])

      article = Article.new(params[:article])
      article.category = category


      if article.save
        flash[:notice] = "Create article successful"
      else
        flash[:error] = "Created article failed"
      end

    redirect_to :action => "index"
		end
	end

end