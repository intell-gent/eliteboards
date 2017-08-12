class CategoriesController < ApplicationController
  def index
    @categories = Category.all
     @categories
  end
  def show
    @category = Category.find(params[:id])
    @category
  end
  def new
     @category = Category.new()
  end
  def create
    @category = Category.new(params[:category])

    if @category.save
      redirect :"categories/#{@category.id}"
    end

  end
end
