class CreateRefVilles < ActiveRecord::Migration
  def change
    create_table :ref_villes do |t|
      t.integer :pays_id
      t.string :libelle
      t.string :code
      t.boolean :active, default:true

      t.timestamps
    end
    add_index :ref_villes, :pays_id
  end
end
