class AddFieldsToTenants < ActiveRecord::Migration[5.1]
  def change
	add_column :tenants, :address_line_1, :text
	add_column :tenants, :address_line_2, :text
	add_column :tenants, :town, :text
	add_column :tenants, :county, :text
	add_column :tenants, :postal_code, :text
	remove_column :tenants, :address
  end
end
