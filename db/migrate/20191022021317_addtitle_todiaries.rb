class AddtitleTodiaries < ActiveRecord::Migration[6.0]
  def change
    add_column :diaries, :d_title, :string
  
  end
end
