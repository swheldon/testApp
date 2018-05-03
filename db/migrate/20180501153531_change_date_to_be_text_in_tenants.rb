class ChangeDateToBeTextInTenants < ActiveRecord::Migration[5.1]
  def change
  	change_column :tenants, :move_in_date, :text
  end
end
