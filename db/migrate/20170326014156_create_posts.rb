class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :subject_id
      t.string :text

      t.timestamps null: false
    end
  end
end
