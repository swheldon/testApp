class AddEstateIdAndOtherFieldsToTenants < ActiveRecord::Migration[5.1]
  def change
    add_column :tenants, :estate_id, :integer, index: {unique:true}, foreign_key: true
    add_column :tenants, :budget, :text
    add_column :tenants, :url_1, :text
    add_column :tenants, :url_2, :text
    add_column :tenants, :url_3, :text
    add_column :tenants, :url_4, :text
    add_column :tenants, :url_5, :text
    add_column :tenants, :url_6, :text
    add_column :tenants, :notes, :text
  end
end
