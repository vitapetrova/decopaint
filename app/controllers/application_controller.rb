class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :menu

  def menu
    @static_pages = CategoryPage.static_pages.pages if CategoryPage.static_pages.present?
    @services = CategoryPage.services.pages if CategoryPage.services.present?
  end
end
