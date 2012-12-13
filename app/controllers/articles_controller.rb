class ArticlesController < ApplicationController
  def index
    @articles = Article.all
	@categories = Category.all
  end

  def view

  	@categories = Category.all

  	@article = Article.find(params[:id])
  	
  	@comments = @article.comments
  end
	
end
