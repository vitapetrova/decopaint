class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
    @else_works = @work.category_work.works.limit(3)
  end
end
