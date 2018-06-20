class AddReferenceIdAndOtherFieldsToEstates < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :sRef_ID, :text
    add_column :estates, :web, :text
    add_column :estates, :rightmove, :text
    add_column :estates, :gumtree, :text
    add_column :estates, :estate_web, :text
    add_column :estates, :agent_1, :text
    add_column :estates, :agent_2, :text
    add_column :estates, :available_date, :date
  end
end
