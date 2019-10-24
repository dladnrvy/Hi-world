class RenameColumnAttachmentsToProfileImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :attachment, :profileImages
  end
end
