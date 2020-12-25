class RenameCulumnCategoryToNameGenre < ActiveRecord::Migration[6.0]
  def change
    rename_column :genres, :category, :name
  end
end
