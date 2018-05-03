class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.text :last_name
      t.text :first_name
      t.text :address
      t.integer :phone_number
      t.text :email
      t.text :employment_status
      t.integer  :tenant_count
      t.text    :move_in_date
      t.integer :term_months
      t.text :furnished
      t.text :lead_source
      t.text :special_requirements

      t.timestamps
    end
  end
end
