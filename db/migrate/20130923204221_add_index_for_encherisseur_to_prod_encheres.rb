class AddIndexForEncherisseurToProdEncheres < ActiveRecord::Migration
  def change
    add_index :encheres, :dernierEncherisseur_id
    add_index :encheres, :encherisseurGagnant_id
  end
end
