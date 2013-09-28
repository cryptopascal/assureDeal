class AddPeriodeRappelIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :encheres, :periode_rappel_id, :integer
    add_index :encheres, :periode_rappel_id
  end
end
