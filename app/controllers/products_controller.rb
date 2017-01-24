class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true)
  end
end
