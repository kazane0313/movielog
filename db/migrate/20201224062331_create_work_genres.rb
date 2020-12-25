class CreateWorkGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :work_genres do |t|
      t.integer "work_id"
      t.integer "genre_id"
      t.timestamps
    end
  end
end
