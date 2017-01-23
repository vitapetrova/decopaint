class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true)
  end
end
