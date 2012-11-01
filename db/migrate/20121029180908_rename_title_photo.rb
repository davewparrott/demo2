class RenameTitlePhoto < ActiveRecord::Migration
  def up
	rename_column :products, :titlePhoto, "title_photo"
  end

  def down
  end
end
