class AddFieldsToEstates < ActiveRecord::Migration[5.1]
  def change
	add_column :estates, :address_line_1, :text
        add_column :estates, :address_line_2, :text
        add_column :estates, :town, :text
        add_column :estates, :county, :text
        add_column :estates, :postal_code, :text
        remove_column :estates, :estate_address
  end
end
