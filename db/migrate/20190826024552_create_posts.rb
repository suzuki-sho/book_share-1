class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :book_title
      t.string :book_message
      t.string :posts_user

      t.timestamps
    end
  end
end
