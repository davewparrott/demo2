class FixColumnName2 < ActiveRecord::Migration
  def up
	rename_column :products, :fieldOrder, :featureOrder
  end

  def down
  end
end
