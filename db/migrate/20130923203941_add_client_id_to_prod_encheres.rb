class AddClientIdToProdEncheres < ActiveRecord::Migration
  def change
    add_column :prod_encheres, :client_id, :integer
    add_index :prod_encheres, :client_id
  end
end
