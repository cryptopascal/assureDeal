class AddProduitIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :encheres, :produit_id, :integer
    add_index :encheres, :produit_id
  end
end
