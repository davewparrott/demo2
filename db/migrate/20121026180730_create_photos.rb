class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :alttxt
      t.string :filename
      t.integer :product_id
      t.boolean :active
      t.integer :order

      t.timestamps
    end
  end
end
