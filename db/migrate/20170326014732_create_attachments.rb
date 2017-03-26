class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.binary :file
      t.float :size

      t.timestamps null: false
    end
  end
end
