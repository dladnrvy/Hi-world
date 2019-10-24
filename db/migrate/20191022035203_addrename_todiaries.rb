class AddrenameTodiaries < ActiveRecord::Migration[6.0]
  def change
    rename_column :diaries, :images, :attachment
  end
end
