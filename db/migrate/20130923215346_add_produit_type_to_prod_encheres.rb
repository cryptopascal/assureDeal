class AddProduitTypeToProdEncheres < ActiveRecord::Migration
  def change
    add_column :prod_encheres, :produit_type, :string
  end
end
