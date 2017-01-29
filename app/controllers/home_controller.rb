class HomeController < ApplicationController
  def index
    @home_page = true
    @sliders = Slider.all
    @products_menu = Product.where(show_menu: true).limit(5)
    @manufacturers = Manufacturer.all
    @reviews = Review.all
  end

  def about
    @manufacturers = Manufacturer.all
  end

  def certificates
    @certificates = Certificate.all
  end

  def services
    @else_works = CategoryWork.first.works.limit(3)
  end
end
