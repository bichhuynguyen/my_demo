class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.integer :year
      t.string :isbn
      t.integer :page_count
      t.text :description
      t.float :average_rating
      t.integer :ratings_count
      t.text :covers
      t.string :preview_link
      t.string :info_link
      t.string :kind

      t.timestamps null: false
    end
  end
end
