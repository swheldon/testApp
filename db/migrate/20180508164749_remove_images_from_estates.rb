class RemoveImagesFromEstates < ActiveRecord::Migration[5.1]
  def change
	remove_column :estates, :image
  end
end
