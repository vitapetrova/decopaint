class HomeController < ApplicationController
  def index
    @home_page = true
    @products_menu = Product.where(show_menu: true).limit(5)
  end
end
