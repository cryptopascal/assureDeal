class AddTypePriseContactIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :encheres, :type_prise_contact_id, :integer
    add_index :encheres, :type_prise_contact_id
  end
end
