class ChangePhoneNumberToBeTextInTenants < ActiveRecord::Migration[5.1]
  def change
  	change_column :tenants, :phone_number, :text
  end
end
