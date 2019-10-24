class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.text :p_post
      t.string :p_date
    end
  end
end
