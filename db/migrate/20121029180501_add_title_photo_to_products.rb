class AddTitlePhotoToProducts < ActiveRecord::Migration
  def change
	add_column :products, :titlePhoto, :string
  end
end
