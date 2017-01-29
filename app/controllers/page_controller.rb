class PageController < ApplicationController
  def show
    @page = Page.friendly.find(params[:id])
  end
end
