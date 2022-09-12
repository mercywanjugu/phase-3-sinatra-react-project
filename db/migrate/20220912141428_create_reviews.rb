class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :body
      t.integer :user_id
    end
  end
end
