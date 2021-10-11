class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).all
  end
  def new
    @product = Product.new
    @categories = Category.all
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @product = Product.includes(:category).find(params[:id])
  end
  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end
  def update
    @product = Product.update(product_params)
    if @product
      redirect_to products_path
    else
      render :edit , status: :unprocessable_entity
    end
  end
  def destroy
    if Product.delete(params[:id])
      redirect_to products_path
    else
      render :products , status: :unprocessable_entity
    end
  end


  def product_params
    params.require(:product).permit(:name, :body, :price, :category_id, :avatar)
  end
end
