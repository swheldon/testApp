class RemoveAreaFromEstates < ActiveRecord::Migration[5.1]
  def change
	remove_column :estates, :area
  end
end
