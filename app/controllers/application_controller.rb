class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :menu

  def menu
    @static_pages = CategoryPage.static_pages.pages.show.pages_priority if CategoryPage.static_pages.present?
    @services = CategoryPage.services.pages.show.pages_priority if CategoryPage.services.present? && CategoryPage.services.pages.show.present?
  end
end
