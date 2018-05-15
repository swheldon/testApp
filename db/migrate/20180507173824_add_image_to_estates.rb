class AddImageToEstates < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :image, :string
  end
end
