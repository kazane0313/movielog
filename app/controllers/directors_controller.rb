class DirectorsController < ApplicationController
  before_action :set_director,only: [:edit, :show, :update, :destroy]
  def index
    @directors = Director.all.by_alphabet.page(params[:page]).per(6)
  end

  def show

  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_path, notice: "データを保存しました。"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @director.update(director_params)
      redirect_to directors_path, notice: "データを更新しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_path, notice: "データを削除しました。"
  end

  private

  def director_params
    params[:director].permit(
      :name,
      :country,
      :image,
      :image_cache,
      :remove_image,
    )
  end
  def set_director
    @director = Director.find(params[:id])
  end
end
