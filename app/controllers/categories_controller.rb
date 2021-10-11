class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    #raise params.inspect
#=begin
    @category = Category.new(categories_params)
    if @category.save
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
#=end
  end
  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(categories_params)
      redirect_to categories_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path
    end
  end

  def categories_params
    params.require(:category).permit(:name, :avatar)
  end
end
