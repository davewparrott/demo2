class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :active
      t.text :details
      t.decimal :price
      t.integer :stock
      t.text :summary
      t.string :title

      t.timestamps
    end
  end
end
