class AddPeriodeRappelIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :prod_encheres, :periode_rappel_id, :integer
    add_index :prod_encheres, :periode_rappel_id
  end
end
