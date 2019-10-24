class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.belongs_to :user
      t.string :d_post
      t.string :d_date
      t.string :attachment
      t.string :d_title    

    
    end
  end
end
