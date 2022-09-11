class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.integer :genre_id
      t.integer :is_borrowed
    end
  end
end
