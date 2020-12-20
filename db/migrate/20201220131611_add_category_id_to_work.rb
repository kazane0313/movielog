class AddCategoryIdToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :category_id, :integer
  end
end
