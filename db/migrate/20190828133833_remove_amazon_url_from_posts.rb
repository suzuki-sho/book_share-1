class RemoveAmazonUrlFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :amazon_url, :string
  end
end
