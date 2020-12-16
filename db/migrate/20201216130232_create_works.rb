class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string "title"
      t.string "release"
      t.string "starring"
      t.text "explanation"
      t.timestamps
    end

    create_table :directors do |t|
      t.string "name"
      t.string "country"
    end
  end
end
