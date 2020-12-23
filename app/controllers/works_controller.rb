class WorksController < ApplicationController
  before_action :set_work,only: [:show]
  def index
    @q = Work.by_position.ransack(params[:q])
    @works = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def show

  end


  def move_higher
    Work.find(params[:id]).move_higher
    redirect_to :action => 'index'
  end

  private

  def set_work
    @work = Work.find(params[:id])
  end
end
