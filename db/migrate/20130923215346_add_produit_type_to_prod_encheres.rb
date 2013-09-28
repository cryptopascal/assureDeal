class AddProduitTypeToProdEncheres < ActiveRecord::Migration
  def change
    add_column :encheres, :produit_type, :string
  end
end
