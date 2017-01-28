class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true)

    @all_volumes = {}
    @all_volumes[@product.volume] = [@product.price, @product.price2]
    @all_volumes[@product.volume_2] = [@product.price_2, @product.price_22]
    @all_volumes[@product.volume_3] = [@product.price_3, @product.price_32]
  end

  def select
    @name_product = params[:name]
    @volume = params[:volume]
    @price1 = params[:price1]
    @price2 = params[:price2]
    @painting = params[:painting]
    @amount = params[:amount]
    render 'select'
  end
end
