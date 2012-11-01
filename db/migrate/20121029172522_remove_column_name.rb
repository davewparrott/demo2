class RemoveColumnName < ActiveRecord::Migration
  def up
	remove_column :products, :featureOrder
  end

  def down
  end
end
