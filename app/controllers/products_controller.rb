class ProductsController < ApplicationController
  after_action :cookies_set_product, only: [:show]

  def index
    # @products = Product.paginate(:page => params[:page], :per_page => 9).order(:priority)
    @products = Product.all.order(:priority)
  end

  def show
    @product = Product.find(params[:id])
    @category_products_menu = CategoryProduct.where(show_menu: true).order(:priority)
    @complementary_products = @product.complementary_products
    @all_volumes = {}
    @all_volumes[@product.volume] = [@product.price, @product.price2] if @product.volume.present?
    @all_volumes[@product.volume_2] = [@product.price_2, @product.price_22] if @product.volume_2.present?
    @all_volumes[@product.volume_3] = [@product.price_3, @product.price_32] if @product.volume_3.present?
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

  private
    def cookies_set_product
      cookies[:product_id] = '' if cookies[:product_id].nil?
      products_id = cookies[:product_id] ? cookies[:product_id].split(",") : []
      if products_id.count < 4
        cookies[:product_id] = cookies[:product_id] + "#{@product.id}," unless products_id.include?(@product.id)
      else
        if !products_id.include?(@product.id)
          products_id.shift
          products_id.push(@product.id)
          products_id = products_id.join(',')
          cookies[:product_id] = ''
          cookies[:product_id] = products_id
        end
      end
    end


end
