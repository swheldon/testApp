class AddPhotosToEstates < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :photos, :json
  end
end
