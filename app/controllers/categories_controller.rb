class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @category.title.build
    @category.body.build
    @category.category_id.build
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: 'Category was successfully created.'
    else
      render action: 'new', notice: 'That category already exists.'
    end
  end

  private
  def category_params
    params.require(:categories).permit(:name)
  end
end
