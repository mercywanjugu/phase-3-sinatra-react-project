class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      # t.integer :genre_id
      t.integer :user_id
      #t.integer :author_id
      t.string :author
      t.integer :genre_id
      t.integer :author_id
      


    end
  end
end
