class AddDirectorIdToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :director_id, :integer
  end
end
