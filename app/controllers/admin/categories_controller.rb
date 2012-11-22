class Admin::CategoriesController < ApplicationController

	before_filter :authorize

	layout "administration"
end
