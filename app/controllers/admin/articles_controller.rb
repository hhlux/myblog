class Admin::ArticlesController < ApplicationController

	before_filter :authorize

	layout "administration"

	def index
    @articles = Article.all(:include => [:category])
	end

	def new
		new_or_edit
	end

  def edit
    new_or_edit
  end

  def destroy

    if Article.destroy(params[:id])
      flash[:notice] = "Delete category successful"
    else
      flash[:error] = "Delete category failed"
    end

    redirect_to :action => "index"
  end

  def new_or_edit

    # 显示新建或编辑画面
    if request.get?

      @categories = Category.all
      
      if params[:id] 
        @article = Article.find(params[:id])
      else
        @article = Article.new
      end

      render "new"

    elsif request.post?

      # 更新操作
      if params[:article][:id] != ""
        article = Article.find(params[:article][:id])
        article.update_attributes(params[:article])

      # 新建操作
      else

        category = Category.find(params[:category_id])

        article = Article.new(params[:article])
        article.category = category
        article.save
      end

      redirect_to :action => "index"
    end
  end

end