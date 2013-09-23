class AddTypePriseContactIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :prod_encheres, :type_prise_contact_id, :integer
    add_index :prod_encheres, :type_prise_contact_id
  end
end
