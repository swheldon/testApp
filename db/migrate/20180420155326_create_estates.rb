class CreateEstates < ActiveRecord::Migration[5.1]
  def change
    create_table :estates do |t|
      t.text :estate_address
      t.text :area
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_footage
      t.integer :rent

      t.timestamps
    end
  end
end
