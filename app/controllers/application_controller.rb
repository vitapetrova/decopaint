class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :menu
  before_action :product_set
  before_action :footer

  def menu
    @static_pages = CategoryPage.static_pages.pages.show.pages_priority if CategoryPage.static_pages.present?
    @services = CategoryPage.services.pages.show.pages_priority if CategoryPage.services.present? && CategoryPage.services.pages.show.present?
  end

  def footer
    @footer = Footer.last
  end

  def product_set
    if cookies[:product_id].present?
      recent_products_id = cookies[:product_id].split(",")
      @recent_products ||= []
      recent_products_id.each do |product_id|
        @recent_products << Product.find_by(id: product_id)
      end
      @recent_products
    end
  end
end
