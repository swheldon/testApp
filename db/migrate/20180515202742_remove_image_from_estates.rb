class RemoveImageFromEstates < ActiveRecord::Migration[5.1]
  def change
	remove_column :estates, :image
	remove_column :estates, :image_data
  end
end
