class Admin::CategoriesController < ApplicationController

	before_filter :authorize

	layout "administration"

  def index 
    @categories = Category.all
  end

  def new
    category = Category.new(params[:category])
    logger.warn 'newing--------ciying'
    if category.save
      flash[:notice] = "Create category successful"
    else
      flash[:error] = "Created category failed"
    end

    redirect_to :action => "index"
  end

  def update
    #category = Category.find(params[:id])
    
    #category.update_attributes(:name =>params[:name])
    category = Category.find(params[:id])
    category.name = params[:name]
    category.save

    logger.warn "updating----------------------------ciying"
    
    respond_to do |format|
      format.html
      format.js { render :layout => false}
      format.json {render :json => category.to_json}
    end
  end

  def delete
    category = Category.destroy(params[:id])
    
    if category.destroy
      flash[:notice] = "Delete category successful"
    else
      flash[:error] = "Delete category failed"
    end

    redirect_to :action => "index"
  end

end
