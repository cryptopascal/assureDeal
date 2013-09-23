class AddIndexForEncherisseurToProdEncheres < ActiveRecord::Migration
  def change
    add_index :prod_encheres, :dernierEncherisseur_id
    add_index :prod_encheres, :encherisseurGagnant_id
  end
end
