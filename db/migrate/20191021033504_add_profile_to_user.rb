class AddProfileToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_post, :string
    add_column :users, :profile_images, :string
  end
end
