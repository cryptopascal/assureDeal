class AddProduitIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :prod_encheres, :produit_id, :integer
    add_index :prod_encheres, :produit_id
  end
end
