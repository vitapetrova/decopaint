class CategoryProductsController < ApplicationController
  def show
    @category_product = CategoryProduct.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true).order(:priority)
    @products = @category_product.products.order(:priority)
  end
end
