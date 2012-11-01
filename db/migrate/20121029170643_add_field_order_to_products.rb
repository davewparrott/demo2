class AddFieldOrderToProducts < ActiveRecord::Migration
  def change
    add_column :products, :fieldOrder, :integer
  end
end
