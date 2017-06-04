class WorksController < ApplicationController
  def index
    @categories_work = CategoryWork.all
  end

  def show
    @work = Work.find(params[:id])
    @else_works = @work.category_work.works.limit(3)
  end
end
