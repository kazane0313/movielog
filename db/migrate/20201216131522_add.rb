class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :created_at, :datetime, null: false
    add_column :directors, :updated_at, :datetime, null: false
  end
end
