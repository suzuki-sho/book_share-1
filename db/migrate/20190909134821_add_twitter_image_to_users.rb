class AddTwitterImageToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :twitter_image, :string
  end
end
