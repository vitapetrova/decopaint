class CategoryProductsController < ApplicationController
  def show
    @category_product = CategoryProduct.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true)
    @products = @category_product.products
  end
end
