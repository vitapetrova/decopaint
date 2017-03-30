class HomeController < ApplicationController
  def index
    @home_page = true
    @sliders = Slider.all
    @products_menu = Product.where(show_menu: true).limit(8)
    @manufacturers = Manufacturer.all
    @reviews = Review.all
    @block_texts = HomePage.first
  end

  def about
    @manufacturers = Manufacturer.all
    @block_texts = AboutPage.first
  end

  def contacts
    @block_texts = ContactsPage.first
  end

  def certificates
    @certificates = Certificate.all
  end

  def services
    @else_works = CategoryWork.first.works.limit(3)
  end

  def blog
    @blog_pages = CategoryPage.blog.pages
  end
end
