class AddStatusToEstates < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :status, :string
  end
end
