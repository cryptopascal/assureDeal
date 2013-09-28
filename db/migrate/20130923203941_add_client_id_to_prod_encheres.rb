class AddClientIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :encheres, :client_id, :integer
    add_index :encheres, :client_id
  end
end
