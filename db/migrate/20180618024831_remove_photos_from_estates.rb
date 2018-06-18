class RemovePhotosFromEstates < ActiveRecord::Migration[5.1]
  def change
	remove_column :estates, :photos
  end
end
