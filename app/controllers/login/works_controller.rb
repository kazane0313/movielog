class Login::WorksController < Login::ApplicationController
  before_action :set_work,only: [:edit, :update, :destroy]

  def new
    @work = Work.new
    @work.director_id = params[:director_id] if params[:director_id]
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path, notice: "データを保存しました。"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @work.update(work_params)
      redirect_to works_path, notice: "データを更新しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path, notice: "データを削除しました。"
  end

  def move_higher
    Work.find(params[:id]).move_higher
    redirect_to :action => 'index'
  end

  private

  def work_params
    params[:work].permit(
      :title,
      :release,
      :starring,
      :explanation,
      :director_id,
      :image,
      :image_cache,
      :remove_image,
      genre_ids: []
    )
  end
  def set_work
    @work = Work.find(params[:id])
  end
end
