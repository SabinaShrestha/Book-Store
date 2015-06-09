class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :upload_date
      t.string :author
      t.float :price
      t.timestamps null: false
    end
  end
end
