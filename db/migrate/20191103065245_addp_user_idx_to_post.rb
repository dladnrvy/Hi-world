class AddpUserIdxToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :p_user_idx, :int
  end
end
