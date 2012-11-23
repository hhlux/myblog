class Admin::CategoriesController < ApplicationController

	before_filter :authorize

	layout "administration"

  def index 
    @categories = Category.all
  end

  def new
    category = Category.new(params[:category])

    if category.save
      flash[:notice] = "Create category successful"
    else
      flash[:error] = "Created category failed"
    end

    redirect_to :action => "index"
  end

  def edit
  end

  def delete
  end

end