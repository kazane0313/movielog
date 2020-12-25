class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
    @q = @genre.works.includes(:director).ransack(params[:q])
    @works = @q.result(distinct: true).by_position.page(params[:page]).per(6)
    render 'works/index'
  end
end
