class AddFieldToProducts < ActiveRecord::Migration
  def change
    add_column :products, :featured, :integer
  end
end
