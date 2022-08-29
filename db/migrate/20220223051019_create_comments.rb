class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end
end