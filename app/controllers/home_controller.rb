class HomeController < ApplicationController
  def index
    @home_page = true
    @sliders = Slider.all
    @products_menu = Product.where(show_menu: true).limit(5)
    @manufacturers = Manufacturer.all
  end

  def about
    @manufacturers = Manufacturer.all
  end
end
