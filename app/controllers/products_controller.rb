class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create    
    @product = Product.new(params.require(:product).permit(:name, :tagline))
    @product.save
    redirect_to root_path
  end
end
