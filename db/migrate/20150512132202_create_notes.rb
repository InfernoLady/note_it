class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :category_id
      t.datetime :date_at

      t.timestamps
    end
  end
end
